---
name: Warm & Natural Smart Home
colors:
  surface: '#faf9f6'
  surface-dim: '#dbdad7'
  surface-bright: '#faf9f6'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f4f3f1'
  surface-container: '#efeeeb'
  surface-container-high: '#e9e8e5'
  surface-container-highest: '#e3e2e0'
  on-surface: '#1a1c1a'
  on-surface-variant: '#51443a'
  inverse-surface: '#2f312f'
  inverse-on-surface: '#f2f1ee'
  outline: '#837469'
  outline-variant: '#d5c3b6'
  surface-tint: '#835425'
  primary: '#6f4315'
  on-primary: '#ffffff'
  primary-container: '#8b5a2b'
  on-primary-container: '#ffddc2'
  inverse-primary: '#f9ba82'
  secondary: '#50652a'
  on-secondary: '#ffffff'
  secondary-container: '#cfe99f'
  on-secondary-container: '#546a2e'
  tertiary: '#793d00'
  on-tertiary: '#ffffff'
  tertiary-container: '#9c5100'
  on-tertiary-container: '#ffdcc5'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#ffdcc1'
  primary-fixed-dim: '#f9ba82'
  on-primary-fixed: '#2e1500'
  on-primary-fixed-variant: '#683d0f'
  secondary-fixed: '#d2eca2'
  secondary-fixed-dim: '#b6d088'
  on-secondary-fixed: '#131f00'
  on-secondary-fixed-variant: '#394d14'
  tertiary-fixed: '#ffdcc4'
  tertiary-fixed-dim: '#ffb781'
  on-tertiary-fixed: '#2f1400'
  on-tertiary-fixed-variant: '#6f3800'
  background: '#faf9f6'
  on-background: '#1a1c1a'
  surface-variant: '#e3e2e0'
typography:
  headline-xl:
    fontFamily: Plus Jakarta Sans
    fontSize: 40px
    fontWeight: '700'
    lineHeight: 52px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 40px
    letterSpacing: -0.01em
  headline-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
  headline-sm:
    fontFamily: Plus Jakarta Sans
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
  body-lg:
    fontFamily: Be Vietnam Pro
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Be Vietnam Pro
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-sm:
    fontFamily: Be Vietnam Pro
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  label-md:
    fontFamily: Be Vietnam Pro
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.05em
  headline-lg-mobile:
    fontFamily: Plus Jakarta Sans
    fontSize: 28px
    fontWeight: '600'
    lineHeight: 36px
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 8px
  container-margin: 24px
  gutter: 16px
  card-padding: 20px
  section-gap: 32px
---

## Brand & Style

The design system is rooted in the philosophy of "calm automation"—technology that serves the home without intruding upon its peace. Drawing inspiration from Muji-style minimalism and organic living, the interface emphasizes comfort, warmth, and natural materials. 

The target audience consists of homeowners who value a zen-like environment and prefer tactile, soft interfaces over cold, high-tech aesthetics. The emotional response should be one of "pyeonhaet-ham" (편안함 - comfort) and "ttadeut-ham" (따뜻함 - warmth). 

The design style is **Minimalist-Organic**, blending clean layouts with soft, matte textures and physical metaphors that feel like natural wood, clay, or cotton.

## Colors

The palette is derived from natural elements: timber, moss, and sunset. To maintain a soft visual experience, pure black is strictly avoided in favor of a deep charcoal-brown.

- **Background (Base):** #FAF9F6 (Off-white/Beige). Provides a paper-like, warm canvas.
- **Surface (Card):** #FFFFFF. Clean white surfaces to differentiate interactive zones.
- **Primary (Wood Brown):** #8B5A2B. Used for structural elements, active states, and primary navigation.
- **Secondary (Muted Olive):** #556B2F. Used for health-related metrics, energy-saving modes, or plants.
- **Accent (Muted Orange):** #E38636. Used for warmth-related controls (heating, lights) and notifications.
- **Text (Dark Brown):** #3E2723. Used for all typography to ensure high legibility without the harshness of black.

## Typography

This design system uses rounded, modern sans-serifs to mirror the soft edges of furniture and nature. 

- **Headlines:** Use **Plus Jakarta Sans** for its friendly, open apertures and soft curves. It feels welcoming and high-end.
- **Body & Labels:** Use **Be Vietnam Pro** for its contemporary clarity and warmth. 
- **Korean Specifics:** When rendering Korean text, ensure the weight is slightly heavier (Medium instead of Regular) to maintain visual balance with English characters. Use a line-height multiplier of 1.6x for Korean body text to improve readability.

## Layout & Spacing

The layout follows a **Fixed-Width Grid** on desktop (12 columns) and a **Fluid Grid** on mobile (4 columns). 

- **Rhythm:** An 8px base unit drives all spacing.
- **Margins:** Large 24px outer margins provide "breathability," ensuring the UI never feels cluttered.
- **Hierarchy:** Group related smart home controls (e.g., all "Living Room" devices) within white cards. Use 32px gaps between different functional sections.
- **Safe Areas:** On mobile, ensure all interactive elements have a minimum height of 48px for comfortable touch control.

## Elevation & Depth

Depth is conveyed through **Ambient Shadows** and **Tonal Layering**, rather than harsh lines.

- **The Base:** The #FAF9F6 beige background acts as the lowest floor.
- **The Surface:** Cards (#FFFFFF) sit slightly above the base.
- **Shadow Profile:** Use extremely soft, diffused shadows with a warm tint. Instead of gray, use a shadow color like `rgba(62, 39, 35, 0.08)` (Dark Brown at low opacity).
- **Active State:** When a card or button is pressed, it should "sink" visually (reduce shadow blur and offset) to provide tactile feedback.

## Shapes

The shape language is consistently **Rounded**. There are no sharp corners in the design system, as they contradict the "cozy" brand promise.

- **Standard Elements:** 0.5rem (8px) for small inputs and selection chips.
- **Large Elements:** 1rem (16px) for main device cards and containers.
- **Extra Large:** 1.5rem (24px) for bottom sheets and decorative panels.
- **Buttons:** Prefer a slightly more rounded appearance than cards to invite clicking.

## Components

### Buttons
- **Primary:** Wood Brown background with White text. Soft shadow.
- **Secondary:** White background with Wood Brown border (1px) and text.
- **Feedback:** Subtle 200ms transitions on hover/tap.

### Cards (Device Controls)
- White background, 16px corner radius.
- Icons should use the Muted Olive or Muted Orange palette to indicate state (e.g., Orange for "On/Warm", Olive for "Eco-mode").
- Headers within cards should use `headline-sm` in Dark Brown.

### Inputs & Sliders
- **Sliders (Dimmer/Temp):** Use a thick, tactile track in a light beige, with a circular Wood Brown handle.
- **Text Inputs:** Soft beige background (#F2F0EB) with no border, 8px radius.

### Chips & Tags
- Used for room filtering (e.g., "거실", "침실").
- Unselected: Light beige background.
- Selected: Wood Brown background with White text.

### Indicators
- **Status Dots:** Use a pulsing Muted Orange for active heating and a steady Muted Olive for energy-efficient states.
