# OneUI 4.1.1 does not need debloat, its lightweight enoughto unpack and repack without causing group size errors
OneUI5() {
    echo "==================================="
    echo " Executing Debloat for OneUI 5.1.1 "
    echo "==================================="
    
    echo "- Debloating System Partition"
    SYSTEM_BLOBS="
    system/priv-app/OneDrive_Samsung_v3
    "
    for blob in $SYSTEM_BLOBS; do
        DELETE_FROM_WORK_DIR "system" "$blob"
    done

    echo "- Debloating Product Partition"
    PRODUCT_BLOBS="
    app/YouTube
    app/Maps
    "
    for blob in $PRODUCT_BLOBS; do
        DELETE_FROM_WORK_DIR "product" "$blob"
    done
}

OneUI8() {
    # More debloat necessary for Un1ca system to repack (hit group size of 11135877120)
    echo "==================================="
    echo " Executing Aggressive Debloat for OneUI 8 "
    echo "==================================="

    echo "- Debloating System Partition (Safe Targets)"
    SYSTEM_BLOBS="
    system/priv-app/OneDrive_Samsung_v3
    system/priv-app/AREmoji
    system/priv-app/AREmojiEditor
    system/priv-app/AvatarEmojiSticker
    system/priv-app/StickerFaceARAvatar
    system/priv-app/LinkToWindowsService
    system/priv-app/YourPhone_P1_5
    system/priv-app/Bixby
    system/priv-app/BixbyVisionFramework3.5
    system/priv-app/BixbyInterpreter
    system/app/ARCore
    system/app/KidsHome_Installer
    system/app/SamsungTTSVoice_ar_AE_m00
    system/app/SamsungTTSVoice_de_DE_f00
    system/app/SamsungTTSVoice_en_GB_f00
    system/app/SamsungTTSVoice_en_US_l03
    system/app/SamsungTTSVoice_es_ES_f00
    system/app/SamsungTTSVoice_es_MX_f00
    system/app/SamsungTTSVoice_es_US_f00
    system/app/SamsungTTSVoice_fr_FR_f00
    system/app/SamsungTTSVoice_hi_IN_f00
    system/app/SamsungTTSVoice_id_ID_f00
    system/app/SamsungTTSVoice_it_IT_f00
    system/app/SamsungTTSVoice_pl_PL_f00
    system/app/SamsungTTSVoice_pt_BR_f00
    system/app/SamsungTTSVoice_ru_RU_f00
    system/app/SamsungTTSVoice_th_TH_f00
    system/app/SamsungTTSVoice_vi_VN_f00
    system/app/SamsungTTSVoice_zh_CN_f00
    system/app/SamsungTTSVoice_zh_HK_f00
    system/app/SamsungTTSVoice_zh_TW_f00
    "
    for blob in $SYSTEM_BLOBS; do
        DELETE_FROM_WORK_DIR "system" "$blob"
    done

    # They can be installed via playstore anyway
    echo "- Debloating Product Partition (Play Store Replacements)"
    PRODUCT_BLOBS="
    priv-app/Velvet
    app/Chrome
    app/YouTube
    app/Maps
    app/Gmail2
    app/DuoStub
    app/SpeechServicesByGoogle
    "
    for blob in $PRODUCT_BLOBS; do
        DELETE_FROM_WORK_DIR "product" "$blob"
    done
}

# ==========================================
# EXECUTION TOGGLES
# Uncomment ONLY the line for the target OS
# ==========================================

#OneUI5
OneUI8
