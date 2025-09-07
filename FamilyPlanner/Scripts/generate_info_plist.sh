#!/bin/bash
set -euo pipefail
TEMPLATE="$SRCROOT/Config/InfoPlistTemplate.plist"
OUTPUT="$BUILT_PRODUCTS_DIR/$INFOPLIST_PATH"

echo "Generating Info.plist from template $TEMPLATE to $OUTPUT"
/usr/bin/plutil -lint "$TEMPLATE" >/dev/null
cp "$TEMPLATE" "$OUTPUT"
/usr/libexec/PlistBuddy -c "Set :CFBundleIdentifier $PRODUCT_BUNDLE_IDENTIFIER" "$OUTPUT"
/usr/libexec/PlistBuddy -c "Set :CFBundleDisplayName $FP_APP_DISPLAY_NAME" "$OUTPUT"
/usr/libexec/PlistBuddy -c "Set :CFBundleName $FP_APP_DISPLAY_NAME" "$OUTPUT"
/usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString $MARKETING_VERSION" "$OUTPUT"
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $CURRENT_PROJECT_VERSION" "$OUTPUT"
