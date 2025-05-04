# Remove files before replacing ------------------------------------------------------------------------------------------------#
# safely remove old AI/ML blobs
rm -f "$WORK_DIR/vendor/lib64/AIAwbModel_v2.2.tflite"
rm -f "$WORK_DIR/vendor/lib64/libai_denoiser_interface.so"
rm -f "$WORK_DIR/vendor/lib64/libaidenoiser.so"
rm -f "$WORK_DIR/vendor/lib64/libaidenoiserv2.so"
rm -f "$WORK_DIR/vendor/lib64/libAIHighRes_interface.so"
rm -f "$WORK_DIR/vendor/lib64/libscenedetector.uniplugin@1.0.so"
rm -f "$WORK_DIR/vendor/lib64/libSceneDetector_v1.camera.samsung.so"
rm -f "$WORK_DIR/vendor/lib64/libtensorflowlite.camera.samsung.so"
rm -f "$WORK_DIR/vendor/lib64/libtensorflowlite_gpu.camera.samsung.so"
rm -f "$WORK_DIR/vendor/lib64/libtensorflowLite.singletake.camera.samsung.so"
rm -f "$WORK_DIR/vendor/lib64/libHDRVerifier_v1.camera.samsung.so"
rm -f "$WORK_DIR/vendor/lib64/libLightObjectDetector_v1.camera.samsung.so"


# Remove and System libs
rm -f "$WORK_DIR/system/system/lib64/libMPISingleRGB40.camera.samsung.so"
rm -f "$WORK_DIR/system/system/lib64/libMPISingleRGB40Tuning.camera.samsung.so"
rm -f "$WORK_DIR/system/system/lib64/libMultiFrameProcessing30.camera.samsung.so"
rm -f "$WORK_DIR/system/system/lib64/libMultiFrameProcessing30.snapwrapper.camera.samsung.so"
rm -f "$WORK_DIR/system/system/lib64/libMultiFrameProcessing30Tuning.camera.samsung.so"
rm -f "$WORK_DIR/system/system/lib64/libmultirecord.so"


# safely remove old camera-feature.xml
rm -f "$WORK_DIR/system/system/cameradata/camera-feature.xml"

#---------------------------------------------------------------------------------------------------------------------------------#
# Replace System libs
cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/system-lib64/libMPISingleRGB40.camera.samsung.so" \
  "$WORK_DIR/system/system/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/system-lib64/libMPISingleRGB40Tuning.camera.samsung.so" \
  "$WORK_DIR/system/system/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/system-lib64/libMultiFrameProcessing30.camera.samsung.so" \
  "$WORK_DIR/system/system/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/system-lib64/libMultiFrameProcessing30.snapwrapper.camera.samsung.so" \
  "$WORK_DIR/system/system/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/system-lib64/libMultiFrameProcessing30Tuning.camera.samsung.so" \
  "$WORK_DIR/system/system/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/system-lib64/libmultirecord.so" \
  "$WORK_DIR/system/system/lib64/"


#-----------------------------------------------------------------------------------------------------------------------------------------#
# Copy new AI/ML blobs in Vendor
cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/vendor-lib64/AIAwbModel_v2.2.tflite" \
  "$WORK_DIR/vendor/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/vendor-lib64/libai_denoiser_interface.so" \
  "$WORK_DIR/vendor/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/vendor-lib64/libaidenoiser.so" \
  "$WORK_DIR/vendor/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/vendor-lib64/libaidenoiserv2.so" \
  "$WORK_DIR/vendor/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/vendor-lib64/libAIHighRes_interface.so" \
  "$WORK_DIR/vendor/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/vendor-lib64/libscenedetector.uniplugin@1.0.so" \
  "$WORK_DIR/vendor/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/vendor-lib64/libSceneDetector_v1.camera.samsung.so" \
  "$WORK_DIR/vendor/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/vendor-lib64/libtensorflowlite.camera.samsung.so" \
  "$WORK_DIR/vendor/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/vendor-lib64/libtensorflowlite_gpu.camera.samsung.so" \
  "$WORK_DIR/vendor/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/vendor-lib64/libtensorflowLite.singletake.camera.samsung.so" \
  "$WORK_DIR/vendor/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/vendor-lib64/libHDRVerifier_v1.camera.samsung.so" \
  "$WORK_DIR/vendor/lib64/"

cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/vendor-lib64/libLightObjectDetector_v1.camera.samsung.so" \
  "$WORK_DIR/vendor/lib64/"

# Copy new camera-feature.xml
cp -a --preserve=all \
  "$SRC_DIR/target/$TARGET_CODENAME/patches/S25_Camera_features/camera-feature.xml" \
  "$WORK_DIR/system/system/cameradata/"
