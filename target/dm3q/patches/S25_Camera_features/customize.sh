# safely remove old files
rm -f "$WORK_DIR/vendor/lib64/AIAwbModel_v2.2.tflite"
rm -f "$WORK_DIR/system/system/cameradata/camera-feature.xml"
# copy new files in
cp -a --preserve=all "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/AIAwbModel_v2.2.tflite" "$WORK_DIR/vendor/lib64/"
cp -a --preserve=all "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/camera-feature.xml" "$WORK_DIR/system/system/cameradata/"
