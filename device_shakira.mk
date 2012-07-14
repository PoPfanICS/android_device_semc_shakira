# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Discard inherited values and use our own instead.
PRODUCT_NAME := shakira
PRODUCT_DEVICE := shakira
PRODUCT_MODEL := shakira

# Copy the Google Apps to the ota package
COPY_GAPPS := true

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, device/semc/shakira/vendor-blobs.mk)

# Kernel file
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel

# Support files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# Prebuilt files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/app/SystemConnector.apk:system/app/SystemConnector.apk \
    $(LOCAL_PATH)/prebuilt/bin/dhcpcd:system/bin/dhcpcd \
    $(LOCAL_PATH)/prebuilt/bin/tiap_cu:system/bin/tiap_cu \
    $(LOCAL_PATH)/prebuilt/bin/tiap_loader:system/bin/tiap_loader \
    $(LOCAL_PATH)/prebuilt/bin/tiap_loader.sh:system/bin/tiap_loader.sh \
    $(LOCAL_PATH)/prebuilt/bin/wlan_cu:system/bin/wlan_cu \
    $(LOCAL_PATH)/prebuilt/bin/wlan_loader:system/bin/wlan_loader \
    $(LOCAL_PATH)/prebuilt/etc/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \
    $(LOCAL_PATH)/prebuilt/etc/adreno_config.txt:system/etc/adreno_config.txt \
    $(LOCAL_PATH)/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/etc/init.d/01mountext:system/etc/init.d/01mountext \
    $(LOCAL_PATH)/prebuilt/etc/init.d/02popfan:system/etc/init.d/02popfan \
    $(LOCAL_PATH)/prebuilt/etc/init.d/10app2sd:system/etc/init.d/10app2sd \
    $(LOCAL_PATH)/prebuilt/etc/init.d/10dnsconf:system/etc/init.d/10dnsconf \
    $(LOCAL_PATH)/prebuilt/etc/init.d/10hostapconf:system/etc/init.d/10hostapconf \
    $(LOCAL_PATH)/prebuilt/etc/wifi/dnsmasq.conf:system/etc/wifi/dnsmasq.conf \
    $(LOCAL_PATH)/prebuilt/etc/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini \
    $(LOCAL_PATH)/prebuilt/etc/wifi/tiwlan_firmware.bin:system/etc/wifi/tiwlan_firmware.bin \
    $(LOCAL_PATH)/prebuilt/etc/wifi/softap/hostapd.conf:system/etc/wifi/softap/hostapd.conf \
    $(LOCAL_PATH)/prebuilt/etc/wifi/softap/tiwlan_ap.ini:system/etc/wifi/softap/tiwlan_ap.ini \
    $(LOCAL_PATH)/prebuilt/etc/wifi/softap/tiwlan_firmware_ap.bin:system/etc/wifi/softap/tiwlan_firmware_ap.bin \
    $(LOCAL_PATH)/prebuilt/lib/hw/hal_seport.default.so:system/lib/hw/hal_seport.default.so \
    $(LOCAL_PATH)/prebuilt/lib/libaudioeq.so:system/lib/libaudioeq.so \
    $(LOCAL_PATH)/prebuilt/lib/libsystemconnector_hal_jni.so:system/lib/libsystemconnector_hal_jni.so \
    $(LOCAL_PATH)/prebuilt/lib/libsystemconnector/libuinputdevicejni.so:system/lib/libsystemconnector/libuinputdevicejni.so \
    $(LOCAL_PATH)/prebuilt/usr/keychars/systemconnector.kcm.bin:system/usr/keychars/systemconnector.kcm.bin \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/systemconnector.kl:system/usr/keylayout/systemconnector.kl \
    $(LOCAL_PATH)/prebuilt/init.delta.usb.rc:root/init.delta.usb.rc

ifeq ($(COPY_GAPPS), true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/Gapps/addon.d/70-gapps.sh:system/addon.d/70-gapps.sh \
    $(LOCAL_PATH)/prebuilt/Gapps/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/Gmail.apk:system/app/Gmail.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/MarketUpdater.apk:system/app/MarketUpdater.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/MediaUploader.apk:system/app/MediaUploader.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/SetupWizard.apk:system/app/SetupWizard.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/app/Phonesky.apk:system/app/Phonesky.apk \
    $(LOCAL_PATH)/prebuilt/Gapps/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    $(LOCAL_PATH)/prebuilt/Gapps/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    $(LOCAL_PATH)/prebuilt/Gapps/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    $(LOCAL_PATH)/prebuilt/Gapps/etc/g.prop:system/etc/g.prop \
    $(LOCAL_PATH)/prebuilt/Gapps/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    $(LOCAL_PATH)/prebuilt/Gapps/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    $(LOCAL_PATH)/prebuilt/Gapps/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
    $(LOCAL_PATH)/prebuilt/Gapps/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    $(LOCAL_PATH)/prebuilt/Gapps/lib/libflint_engine_jni_api.so:system/lib/libflint_engine_jni_api.so \
    $(LOCAL_PATH)/prebuilt/Gapps/lib/libfrsdk.so:system/lib/libfrsdk.so \
    $(LOCAL_PATH)/prebuilt/Gapps/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
    $(LOCAL_PATH)/prebuilt/Gapps/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    $(LOCAL_PATH)/prebuilt/Gapps/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    $(LOCAL_PATH)/prebuilt/Gapps/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so
endif

# -------------------- PACKAGES --------------------
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27 \
    audio_policy.msm7x27 \
    camera.msm7x27 \
    gralloc.msm7x27 \
    hwcomposer.default \
    hwcomposer.msm7x27 \
    gps.delta \
    libOmxCore \
    libmm-omxcore \
    libopencorehw \
    hcitool

# Settings overlay
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Resolution locales
PRODUCT_LOCALES += mdpi

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise
