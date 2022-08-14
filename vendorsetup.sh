DIR=$(readlink -f "$0")
HOME=$(dirname "$DIR")
# firmware
if [[ -e firmware/xiaomi/surya ]];then
cd $HOME/firmware/xiaomi/surya
git pull
else
git clone https://gitlab.com/Ardjlon/firmware_xiaomi_surya.git $HOME/firmware/xiaomi/surya
fi
# kernel
if [[ -e kernel/xiaomi/surya ]];then
cd $HOME/kernel/xiaomi/surya
git pull
else
git clone https://github.com/Havoc-Devices/android_kernel_xiaomi_surya.git  $HOME/kernel/xiaomi/surya
fi
# vendor
if [[ -e vendor/xiaomi/surya ]];then
cd $HOME/vendor/xiaomi/surya
git pull
else
git clone https://github.com/Havoc-Devices/android_vendor_xiaomi_surya $HOME/vendor/xiaomi/
fi
# hardware
if [[ -e hardware/xiaomi ]];then
cd $HOME/hardware/xiaomi
git pull
else
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-19.1 $HOME/hardware/xiaomi
fi
cd $HOME

