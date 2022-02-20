# firmware
if [[ -e firmware/xiaomi/surya ]];then
echo ""
else
git clone https://gitlab.com/fabriciosc123pro/rom-surya-firmware.git firmware/xiaomi/surya
fi
# kernel
if [[ -e kernel/xiaomi/surya ]];then
echo ""
else
git clone https://github.com/PixelExperience-Devices/kernel_xiaomi_surya.git kernel/xiaomi/surya
fi
# vendor
if [[ -e vendor/xiaomi/surya ]];then
echo ""
else
git clone https://github.com/Surya-Trees-SC/vendor_xiaomi_surya-sc vendor/xiaomi/surya
fi
# hardware
if [[ -e hardware/xiaomi ]];then
echo ""
else
git clone https://github.com/PixelExperience/hardware_xiaomi hardware/xiaomi
fi
# Add Ccache Fix
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=/mnt/ccache
ccache -M 50G -F 0 
