# Link Cleaner

An iOS Shortcut that converts short/tracking URLs into clean canonical URLs and copies them to your clipboard.

## Installation

1. Open the **Shortcuts** app on your iPhone and tap **+** to create a new shortcut
2. Tap the **info button (ⓘ)** at the top, enable **Show in Share Sheet**, and set it to receive **URLs only**
3. Add these actions in order:
   - **Get Contents of URL** — input: Shortcut Input
   - **Match Text** — pattern: `<link rel="canonical" href="([^"]+)"`
   - **Get Group from Matched Text** — get group at index **1**
   - **Copy to Clipboard**
4. Name it "Link Cleaner" and tap **Done**

> **Note:** iOS does not support importing unsigned shortcut files, so manual setup is required. The `.shortcut` files in this repo serve as documentation of the shortcut structure.

## Usage

1. In any app (Reddit, Safari, etc.), tap the **Share** button
2. Select **Link Cleaner** from the share sheet
3. The clean URL is now on your clipboard — paste it anywhere

## How It Works

1. The shortcut fetches the shared URL, following any redirects
2. It extracts the canonical URL from the page's `<link rel="canonical">` tag
3. The clean URL is copied to your clipboard

This works for any site that includes a canonical URL tag in their HTML, which covers most major websites.

## Development

The shortcut is documented as a plist file for version control and reference:

- `link-cleaner.shortcut.xml` — XML source (human-readable)
- `link-cleaner.shortcut` — unsigned binary plist
- `link-cleaner-signed.shortcut` — signed shortcut (importable on iOS)

Run `./build.sh` to compile and sign. Requires macOS with iCloud sign-in (signing uses Apple's servers).
