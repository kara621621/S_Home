-- ==============================================================================
-- 🗄️ Supabase 사용자 프로필 관리 마이그레이션 SQL (001_create_profiles_table.sql)
-- ==============================================================================
-- 이 스크립트는 Supabase 데이터베이스에 사용자 프로필 테이블을 정의하고,
-- 사용자가 회원가입(auth.users 등록) 시 자동으로 프로필 데이터가 생성되도록
-- PostgreSQL 트리거(Trigger) 및 함수를 설정합니다.
-- ------------------------------------------------------------------------------

-- 1. 👥 사용자 프로필 정보를 저장할 profiles 테이블 생성
-- - id 컬럼은 auth.users 테이블의 id(UUID)를 외래키로 참조하여 고유하게 1:1 매핑됩니다.
CREATE TABLE IF NOT EXISTS public.profiles (
    id UUID REFERENCES auth.users ON DELETE CASCADE PRIMARY KEY,
    user_name TEXT,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL
);

-- 2. 🛡️ RLS(Row Level Security, 행 수준 보안) 활성화
-- - 데이터베이스 수준에서 사용자가 자신의 정보에만 접근하거나 수정할 수 있도록 제한하는 보안 정책입니다.
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

-- [보안 정책 정의]
-- A. 프로필 조회(SELECT): 누구나 프로필을 볼 수 있도록 허용 (또는 로그인한 유저만 볼 수 있도록 설정 가능)
CREATE POLICY "프로필은 누구나 조회 가능" ON public.profiles
    FOR SELECT USING (true);

-- B. 프로필 수정(UPDATE): 본인의 프로필(id가 현재 로그인한 유저의 UUID와 같은 경우)만 수정 가능하도록 제한
CREATE POLICY "본인 프로필만 수정 가능" ON public.profiles
    FOR UPDATE USING (auth.uid() = id);


-- 3. ⚙️ 회원가입 시 프로필 자동 생성을 위한 Trigger 함수 정의
-- - auth.users에 신규 가입 레코드가 인서트될 때 자동으로 profiles 테이블에 매핑 데이터를 집어넣습니다.
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO public.profiles (id, user_name)
    VALUES (
        new.id,
        COALESCE(new.raw_user_meta_data->>'user_name', '사용자') -- 가입 시 메타데이터로 전달된 user_name 사용
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;


-- 4. ⚡ 트리거(Trigger) 바인딩
-- - auth.users 테이블에 신규 회원이 가입(INSERT)된 직후(AFTER), 정의한 handle_new_user() 함수가 자동 실행됩니다.
CREATE OR REPLACE TRIGGER on_auth_user_created
    AFTER INSERT ON auth.users
    FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();
