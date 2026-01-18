# Link Cleaner

An iOS Shortcut that converts short/tracking URLs into clean canonical URLs and copies them to your clipboard.

## Installation

### From GitHub (on your iPhone)

1. Open this repository in Safari on your iPhone
2. Tap the `link-cleaner.shortcut` file
3. Tap the **Download raw file** button (arrow icon in the top right)
4. Safari will ask if you want to download — tap **Download**
5. Tap the **Downloads** button in Safari (next to the address bar) and tap the file
6. iOS will open the Shortcuts app and prompt you to add the shortcut
7. Tap **Add Shortcut**

### From your computer

1. Transfer `link-cleaner.shortcut` to your iPhone (via AirDrop, iCloud Drive, email, etc.)
2. Tap the file on your iPhone
3. iOS will open the Shortcuts app and prompt you to add the shortcut
4. Tap **Add Shortcut**

### Manual Setup (if the file doesn't import)

If the shortcut file doesn't import correctly, you can build it manually:

1. Open the **Shortcuts** app and tap **+** to create a new shortcut
2. Tap the **info button (i)** at the top, enable **Show in Share Sheet**, and set it to receive **URLs only**
3. Add these actions in order:
   - **Get Contents of URL** — input: Shortcut Input
   - **Match Text** — pattern: `<link rel="canonical" href="([^"]+)"`
   - **Get Group from Matched Text** — get group at index **1**
   - **Copy to Clipboard**
4. Name it "Link Cleaner" and tap **Done**

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

The shortcut source is stored as an XML plist for easy editing:

- `link-cleaner.shortcut.xml` — editable source file
- `link-cleaner.shortcut` — compiled binary for distribution

After editing the XML source, run `./build.sh` to compile it.
