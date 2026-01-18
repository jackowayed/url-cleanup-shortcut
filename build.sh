#!/bin/bash
set -e
plutil -convert binary1 -o link-cleaner.shortcut link-cleaner.shortcut.xml
shortcuts sign --mode anyone --input link-cleaner.shortcut --output link-cleaner-signed.shortcut
