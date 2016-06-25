----Thanks for xen0n, ferhung, who are contributing to the working CyanogenMod of MTK hardware.---

This is a device tree for Huawei Honor 3C (H30-U10) which is based on MT6582 SoC. Powered by kernel-killer.
# Build

* init
  Sync CyanogenMod source:

        # repo init -u git://github.com/kernel-killer/android.git -b cm-13.0
  or
        # repo init -u git://github.com/kernel-killer/android.git -b cm-13.0-dev
  or
        # repo init -u git://github.com/kernel-killer/android.git -b cm-13.0-twrp
  and
        # repo sync
  *You can choose what you want to build (dev - development version, twrp - TWRP enabled by default or nothing - stock CM)

* full build
        
        # source build/envsetup.sh

        # brunch cm_h30u10-userdebug

# Limitations

Services requires root:

`system/core/rootdir/init.rc`

  * surfaceflinger depends on sched_setscheduler calls, unable to change process priority from 'system' user (default user 'system')

  * mediaserver depends on /data/nvram folder access, unable to do voice calls from 'media' user (default user 'media')

# In China must be skipped to get 204 from Google server.
  * Change of Android 5.1 source to skip network validation in some environment like China can't connect to http://clients3.google.com/generate_204. 

  To see: 
    [Skip_network_validation](http://github.com/ferhung/Skip_network_validation)

# TWRP

  * You are able to build TWRP with CM

  * Uncomment following line in BoardConfig.mk

        # RECOVERY_VARIANT := twrp
