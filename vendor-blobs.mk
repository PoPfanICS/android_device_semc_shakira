# Copyright (C) 2011 The Android Open Source Project
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

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/vendor/bin/akmd2:system/bin/akmd2 \
    $(LOCAL_PATH)/prebuilt/vendor/bin/chargemon:system/bin/chargemon \
    $(LOCAL_PATH)/prebuilt/vendor/bin/hciattach:system/bin/hciattach \
    $(LOCAL_PATH)/prebuilt/vendor/bin/nvimport:system/bin/nvimport \
    $(LOCAL_PATH)/prebuilt/vendor/bin/port-bridge:system/bin/port-bridge \
    $(LOCAL_PATH)/prebuilt/vendor/bin/qmuxd:system/bin/qmuxd \
    $(LOCAL_PATH)/prebuilt/vendor/bin/semc_chargalg:system/bin/semc_chargalg \
    $(LOCAL_PATH)/prebuilt/vendor/bin/updatemiscta:system/bin/updatemiscta \
    $(LOCAL_PATH)/prebuilt/vendor/etc/firmware/fmc_init_1273.1.bts:system/etc/firmware/fmc_init_1273.1.bts \
    $(LOCAL_PATH)/prebuilt/vendor/etc/firmware/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \
    $(LOCAL_PATH)/prebuilt/vendor/etc/firmware/fm_rx_init_1273.1.bts:system/etc/firmware/fm_rx_init_1273.1.bts \
    $(LOCAL_PATH)/prebuilt/vendor/etc/firmware/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \
    $(LOCAL_PATH)/prebuilt/vendor/etc/firmware/fm_tx_init_1273.1.bts:system/etc/firmware/fm_tx_init_1273.1.bts \
    $(LOCAL_PATH)/prebuilt/vendor/etc/firmware/fm_tx_init_1273.2.bts:system/etc/firmware/fm_tx_init_1273.2.bts \
    $(LOCAL_PATH)/prebuilt/vendor/etc/firmware/TIInit_7.2.31.bts:system/etc/firmware/TIInit_7.2.31.bts \
    $(LOCAL_PATH)/prebuilt/vendor/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    $(LOCAL_PATH)/prebuilt/vendor/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    $(LOCAL_PATH)/prebuilt/vendor/etc/semc/chargemon/anim1.rle:system/etc/semc/chargemon/anim1.rle \
    $(LOCAL_PATH)/prebuilt/vendor/etc/semc/chargemon/anim2.rle:system/etc/semc/chargemon/anim2.rle \
    $(LOCAL_PATH)/prebuilt/vendor/etc/semc/chargemon/anim3.rle:system/etc/semc/chargemon/anim3.rle \
    $(LOCAL_PATH)/prebuilt/vendor/etc/semc/chargemon/anim4.rle:system/etc/semc/chargemon/anim4.rle \
    $(LOCAL_PATH)/prebuilt/vendor/etc/semc/chargemon/anim5.rle:system/etc/semc/chargemon/anim5.rle \
    $(LOCAL_PATH)/prebuilt/vendor/etc/semc/chargemon/anim6.rle:system/etc/semc/chargemon/anim6.rle \
    $(LOCAL_PATH)/prebuilt/vendor/etc/semc/chargemon/anim7.rle:system/etc/semc/chargemon/anim7.rle \
    $(LOCAL_PATH)/prebuilt/vendor/etc/semc/chargemon/anim8.rle:system/etc/semc/chargemon/anim8.rle \
    $(LOCAL_PATH)/prebuilt/vendor/etc/hosts:system/etc/hosts \
    $(LOCAL_PATH)/prebuilt/vendor/etc/hw_config.sh:system/etc/hw_config.sh \
    $(LOCAL_PATH)/prebuilt/vendor/etc/sensors.conf:system/etc/sensors.conf \
    $(LOCAL_PATH)/prebuilt/vendor/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/hw/lights.default.so:system/lib/hw/lights.default.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/hw/lights.goldfish.so:system/lib/hw/lights.goldfish.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/hw/lights.shakira.so:system/lib/hw/lights.shakira.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libauth.so:system/lib/libauth.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libC2D2.so:system/lib/libC2D2.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libcamera.so:obj/lib/libcamera.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libcamera.so:system/lib/libcamera.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libcm.so:system/lib/libcm.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libdiag.so:system/lib/libdiag.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libdll.so:system/lib/libdll.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libdsm.so:system/lib/libdsm.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libdss.so:system/lib/libdss.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libgsl.so:system/lib/libgsl.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libmiscta.so:system/lib/libmiscta.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libmmipl.so:system/lib/libmmipl.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libnv.so:system/lib/libnv.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/liboemcamera.so:system/lib/liboemcamera.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/liboncrpc.so:system/lib/liboncrpc.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libopencore_common.so:system/lib/libopencore_common.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libOpenVG.so:system/lib/libOpenVG.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libpbmlib.so:system/lib/libpbmlib.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libqmi.so:system/lib/libqmi.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libqueue.so:system/lib/libqueue.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libril.so:system/lib/libril.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/librpc.so:system/lib/librpc.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libsemc_ril.so:system/lib/libsemc_ril.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libsensorservice.so:system/lib/libsensorservice.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libuim.so:system/lib/libuim.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libwms.so:system/lib/libwms.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libwmsts.so:system/lib/libwmsts.so \
    $(LOCAL_PATH)/prebuilt/vendor/usr/idc/cyttsp-spi.idc:system/usr/idc/cyttsp-spi.idc \
    $(LOCAL_PATH)/prebuilt/vendor/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/vendor/usr/keychars/shakira_keypad.kcm.bin:system/usr/keychars/shakira_keypad.kcm.bin \
    $(LOCAL_PATH)/prebuilt/vendor/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/prebuilt/vendor/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/prebuilt/vendor/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    $(LOCAL_PATH)/prebuilt/vendor/usr/keylayout/shakira_keypad.kl:system/usr/keylayout/shakira_keypad.kl
