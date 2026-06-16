#!/bin/bash

echo -e "- Performing surgical injection of OneUI 5.1.1 libbauthserver.so..."

# Copy and replace the libbauthserver library which is causing issues.
rm -f "$WORK_DIR/vendor/lib64/libbauthserver.so"
rm -f "$WORK_DIR/vendor/lib64/libbauthtzcommon.so"

cp -a --preserve=all "$SRC_DIR/target/$TARGET_CODENAME/patches/OneUI-4.1.1_Fingerprint-fix/vendor-lib64/"* "$WORK_DIR/vendor/lib64/"
