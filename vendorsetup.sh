# firmware
git clone https://gitlab.com/fabriciosc123pro/rom-surya-firmware.git firmware/xiaomi/surya
# kernel
git clone https://github.com/Surya-Trees-SC/kernel_xiaomi_surya-sc.git kernel/xiaomi/surya
# vendor
git clone https://github.com/Surya-Trees-SC/vendor_xiaomi_surya-sc vendor/xiaomi/surya
# hardware
git clone https://github.com/PixelExperience/hardware_xiaomi hardware/xiaomi
# Lawnchair
git clone https://github.com/Surya-Trees-SC/vendor_lawnchair.git vendor/lawnchair
# Add Ccache Fix
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=/mnt/ccache
ccache -M 50G -F 0 
