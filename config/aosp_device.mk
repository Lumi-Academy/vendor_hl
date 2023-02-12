LOCAL_PATH := vendor/hl/config

# Qualcomm platform configurations
include $(LOCAL_PATH)/qcom/utils.mk
include $(LOCAL_PATH)/qcom/pathmap.mk
include $(LOCAL_PATH)/qcom/qcom_boards.mk
include $(LOCAL_PATH)/qcom/BoardConfigQcom.mk
include $(LOCAL_PATH)/qcom/qcom_target.mk

# AOSP wlan directory
include hardware/qcom-caf/wlan/Android.mk

# Overlay
DEVICE_PACKAGE_OVERLAYS += vendor/hl/overlay

# Styles & wallpapers
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/privapp_whitelist_com.android.wallpaper.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp_whitelist_com.android.wallpaper.xml \
    $(LOCAL_PATH)/permissions/default_com.android.wallpaper.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default_com.android.wallpaper.xml

# Extra Apps
PRODUCT_PACKAGES += \
    SettingsExtra \
    LedManagerExtra

# Theme picker
PRODUCT_PACKAGES += \
    ThemePicker \
    ThemeStub \
    ThemesStub

# Theme overlays
PRODUCT_PACKAGES += \
    IconShapeCircleOverlay

# Quick Access Wallet
PRODUCT_PACKAGES += \
    QuickAccessWallet

# Special permissions for system apps
PRODUCT_PACKAGES += \
    aosp-sysconfig.xml

# SimpleDeviceConfig
PRODUCT_PACKAGES += \
    SimpleDeviceConfig

# Launcher3Overlay
PRODUCT_PACKAGES += \
    Launcher3Overlay

# Animation when charging from powered off
PRODUCT_PACKAGES += \
    lineage_charger_animation

# Dexpreopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.systemuicompilerfilter=speed

PRODUCT_ENFORCE_RRO_TARGETS := framework-res

PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/data-ipa-cfg-mgr \
    vendor/qcom/opensource/dataservices \
    vendor/hl/config
