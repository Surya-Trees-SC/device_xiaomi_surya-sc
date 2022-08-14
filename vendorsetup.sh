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
cd $HOME/hardware/xiaomi
git pull
else
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-19.1 $HOME/hardware/xiaomi
fi
cd $HOME

