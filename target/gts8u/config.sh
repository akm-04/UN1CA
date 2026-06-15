#
# Copyright (C) 2024 Salvo Giangreco
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Device configuration file for Galaxy Tab S8 Ultra Wi-Fi
TARGET_NAME="Galaxy Tab S8 Ultra (Wi-Fi)"
TARGET_CODENAME="gts8u"
TARGET_ASSERT_MODEL=""

TARGET_FIRMWARE="SM-S9180/TGY/351390052079597"
TARGET_EXTRA_FIRMWARES=()

# Required for buildenv.sh to source properly
TARGET_SINGLE_SYSTEM_IMAGE="qssi"

# gts8u uses uses f2fs
TARGET_OS_FILE_SYSTEM="f2fs"
TARGET_INSTALL_METHOD="zip"
TARGET_BOOT_DEVICE_PATH="/dev/block/bootdevice/by-name"

# Map extracted from unzip lpdump 
TARGET_SUPER_PARTITION_SIZE=11140071424
TARGET_SUPER_GROUP_NAME="qti_dynamic_partitions"
TARGET_SUPER_GROUP_SIZE=11135877120
TARGET_HAS_SYSTEM_EXT=true

# from build.prop
TARGET_API_LEVEL=32
TARGET_PRODUCT_FIRST_API_LEVEL=31
TARGET_VNDK_VERSION=32

# SEC Product Feature Dummies
TARGET_AUDIO_SUPPORT_ACH_RINGTONE=true
TARGET_AUDIO_SUPPORT_DUAL_SPEAKER=true
TARGET_AUDIO_SUPPORT_VIRTUAL_VIBRATION=true
TARGET_AUTO_BRIGHTNESS_TYPE="5"
TARGET_DVFS_CONFIG_NAME="dvfs_policy_default"
TARGET_ESE_CHIP_VENDOR="NXP"
TARGET_ESE_COS_NAME="JCOP6.3U"
TARGET_FP_SENSOR_CONFIG="google_touch_display_ultrasonic"
TARGET_HAS_HW_MDNIE=true
TARGET_HAS_MASS_CAMERA_APP=false
TARGET_HAS_QHD_DISPLAY=true
TARGET_HFR_MODE="3"
TARGET_HFR_SUPPORTED_REFRESH_RATE="24,10,30,48,60,96,120"
TARGET_HFR_DEFAULT_REFRESH_RATE="120"
TARGET_HFR_SEAMLESS_BRT="35"
TARGET_HFR_SEAMLESS_LUX="40"
TARGET_IS_ESIM_SUPPORTED=true
TARGET_MDNIE_SUPPORTED_MODES="65303"
TARGET_MDNIE_WEAKNESS_SOLUTION_FUNCTION="3"
TARGET_MULTI_MIC_MANAGER_VERSION="08020"
TARGET_SSRM_CONFIG_NAME="siop_dm3q_sm8550"
TARGET_SUPPORT_CUTOUT_PROTECTION=false