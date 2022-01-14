# Proton
git clone https://github.com/kdrag0n/proton-clang prebuilts/clang/host/linux-x86/clang-13 --depth=1
touch prebuilts/clang/host/linux-x86/clang-13/AndroidVersion.txt
echo 13 > prebuilts/clang/host/linux-x86/clang-13/AndroidVersion.txt
# firmware
git clone https://gitlab.com/fabriciosc123pro/rom-surya-firmware.git firmware/xiaomi/surya
# kernel
git clone https://github.com/xiaomeme-surya/android_kernel_xiaomi_surya.git kernel/xiaomi/surya
# vendor
git clone  https://github.com/xiaomeme-surya/android_vendor_xiaomi_surya.git vendor/xiaomi/surya
# devicesettings
rm -rf packages/resources/devicesettings
git clone https://github.com/xiaomeme-surya/packages_resources_devicesettings packages/resources/devicesettings

# hardware
git clone https://github.com/PixelExperience/hardware_xiaomi hardware/xiaomi
# qcom
rm -rf hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/media
rm -rf hardware/qcom-caf/sm8150/display
git clone https://github.com/xiaomeme-surya/android_hardware_qcom_display.git  hardware/qcom-caf/sm8150/display

git clone https://github.com/xiaomeme-surya/android_hardware_qcom_audio.git hardware/qcom-caf/sm8150/audio
git clone https://github.com/xiaomeme-surya/android_hardware_qcom_media hardware/qcom-caf/sm8150/media
