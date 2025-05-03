# 1) Remove old libraries
rm -rf "$WORK_DIR/vendor/lib64/soundfx"
rm -rf "$WORK_DIR/vendor/lib/soundfx"
# 2) Recreate directories
mkdir -p "$WORK_DIR/vendor/lib/soundfx"
mkdir -p "$WORK_DIR/vendor/lib64/soundfx"
# 3) Copy in your patched files
cp -a --preserve=all "$SRC_DIR/target/$TARGET_CODENAME/patches/OneUI-5.1_Sound-libs/vendor-lib/soundfx/"* "$WORK_DIR/vendor/lib/soundfx"
cp -a --preserve=all "$SRC_DIR/target/$TARGET_CODENAME/patches/OneUI-5.1_Sound-libs/vendor-lib64/soundfx/"* "$WORK_DIR/vendor/lib64/soundfx"