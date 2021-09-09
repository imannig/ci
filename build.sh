#! /bin/bash


git clone https://github.com/lineageos/android_device_htc_m7 device/htc/m7 --depth=1
git clone https://github.com/stealth1226/android_device_htc_m7-common device/htc/m7-common -b cm-14.1 --depth=1 
git clone https://github.com/stealth1226/kernel_htc_msm8960 kernel/htc/msm8960 --depth=1 
git clone https://github.com/lineageos/android_device_htc_msm8960-common device/htc/msm8960-common --depth=1 
git clone https://github.com/TheMuppets/proprietary_vendor_htc/ vendor/htc -b cm-14.1 --depth=1

. build/envsetup.sh
breakfast m7
mka mkbootimg
export USE_HOST_LEX=yes
mka halium-boot
mka systemimage
curl --upload-file out/target/product/m7/halium-boot.img https://transfer.sh/halium-boot.img
curl --upload-file out/target/product/m7/system.img https://transfer.sh/system.img
