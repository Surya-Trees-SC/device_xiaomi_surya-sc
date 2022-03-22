DIR=$(readlink -f "$0")
HOME=$(dirname "$DIR")
# firmware
if [[ -e firmware/xiaomi/surya ]];then
cd $HOME/firmware/xiaomi/surya
git pull
else
git clone https://gitlab.com/fabriciosc123pro/rom-surya-firmware.git $HOME/firmware/xiaomi/surya
fi
# kernel
if [[ -e kernel/xiaomi/surya ]];then
cd $HOME/kernel/xiaomi/surya
git pull
else
git clone https://github.com/ArrowOS-Devices/android_kernel_xiaomi_surya.git  $HOME/kernel/xiaomi/surya
fi
# vendor
if [[ -e vendor/xiaomi/surya ]];then
cd $HOME/vendor/xiaomi/surya
git pull
else
git clone https://github.com/Surya-Trees-SC/vendor_xiaomi_surya-sc $HOME/vendor/xiaomi/surya
fi
# hardware
if [[ -e hardware/xiaomi ]];then
cd $HOME/hardware/xiaomi/surya
git pull
else
git clone https://github.com/PixelExperience/hardware_xiaomi $HOME/hardware/xiaomi
fi
# livedisplay
if [[ -e hardware/lineage/livedisplay ]];then
cd $HOME/hardware/lineage/livedisplay
git pull
else
git clone https://github.com/LineageOS/android_hardware_lineage_livedisplay.git -b lineage-19.0 $HOME/hardware/lineage/livedisplay
fi
cd $HOME
# Add Ccache Fix
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=/mnt/ccache
ccache -M 50G -F 0 
