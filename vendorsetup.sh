cd frameworks/av
git reset --hard && git clean -f -d
patch -p1 < ../../device/lge/v10/patches/xcore/frameworks_av.patch
cd ../..
cd system/netd
git reset --hard && git clean -f -d
patch -p1 < ../../device/lge/v10/patches/netd.patch
cd ../..
cd system/core
git reset --hard && git clean -f -d
patch -p1 < ../../device/lge/v10/patches/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
cd ../..

add_lunch_combo lineage_v10-userdebug
add_lunch_combo lineage_v10-eng
