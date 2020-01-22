# Assertive display
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.vendor.display.ad=1 \
    ro.vendor.display.sensortype=2 \
    ro.vendor.display.ad.sdr_calib_data=/vendor/etc/OPPO_OLED_AD_calib.cfg

# Audio
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
   ro.config.vc_call_vol_steps=7 \
   ro.config.media_vol_steps=25

# Graphics
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    debug.sf.hw=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.enable_hwc_vds=1 \
    debug.gralloc.enable_fb_ubwc=1 \
    debug.sf.enable_gl_backpressure=1 \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false \
    sdm.debug.disable_skip_validate=1 \
    vendor.display.enable_default_color_mode=1 \
    vendor.gralloc.enable_fb_ubwc=1 \
    vendor.display.disable_skip_validate=1

# HAL1 apps list
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    vendor.camera.hal1.packagelist=com.whatsapp,com.intsig.camscanner,com.instagram.android

# IMS
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.settings.xml=/system/etc/media_profiles_vendor.xml

# Netflix
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.netflix.bsp_rev=Q660-13149-1
	
# Memory optimizations
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.vendor.qti.sys.fw.bservice_enable=true

# Perf
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    vendor.iop.enable_prefetch_ofr=0 \
    vendor.iop.enable_uxe=0

# Radio
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.telephony.default_network=9,0

# UI
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    sys.use_fifo_ui=1
