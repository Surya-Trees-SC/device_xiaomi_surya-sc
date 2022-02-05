# firmware
git clone https://gitlab.com/fabriciosc123pro/rom-surya-firmware.git firmware/xiaomi/surya
# kernel
git clone https://github.com/Surya-Trees-SC/kernel_xiaomi_surya-sc.git kernel/xiaomi/surya
# vendor
git clone https://github.com/Surya-Trees-SC/vendor_xiaomi_surya-sc vendor/xiaomi/surya
# devicesettings
rm -rf packages/resources/devicesettings
git clone https://github.com/Surya-Trees-SC/packages_resources_devicesettings.git -b twelve packages/resources/devicesettings
# hardware
rm -rf hardware/xiaomi
git clone https://github.com/PixelExperience/hardware_xiaomi hardware/xiaomi
# Proton
git clone https://github.com/XSans02/XSansTC-Clang/ -b master prebuilts/clang/host/linux-x86/clang-14
touch prebuilts/clang/host/linux-x86/clang-14/AndroidVersion.txt
echo 14  > prebuilts/clang/host/linux-x86/clang-14/AndroidVersion.txt
# Fix Kernel hardware_pixel
rm -rf hardware/google/pixel/kernel_headers/Android.bp
# Qcom-Caf
rm -rf hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/media
rm -rf hardware/qcom-caf/sm8150/display
git clone https://github.com/Surya-Trees-SC/hardware_qcom_display.git -b twelve-sm8150 hardware/qcom-caf/sm8150/display
git clone https://github.com/Surya-Trees-SC/hardware_qcom_audio.git -b twelve-sm8150 hardware/qcom-caf/sm8150/audio
git clone https://github.com/Surya-Trees-SC/hardware_qcom_media.git -b twelve-sm8150 hardware/qcom-caf/sm8150/media
# Lawnchair
git clone https://github.com/Surya-Trees-SC/vendor_lawnchair.git vendor/lawnchair
# Add Ccache Fix
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=/mnt/ccache
ccache -M 50G -F 0 
