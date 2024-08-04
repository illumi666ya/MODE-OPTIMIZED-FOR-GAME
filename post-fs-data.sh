# ILLUMI
# DEMONICA
# www.bento.me/illumi

# POST-FS-DATA.SH
# MODDIR
MODDIR=${0%/*}

# BOOT
while [ -z "$(resetprop sys.boot_completed)" ]; do
  sleep 1
done

# WAIT
until [ "`getprop sys.boot_completed`" == 1 ]; do
  sleep 1
done

# WAIT V2
wait_until_boot_complete() {
  while [[ "$(getprop sys.boot_completed)" != "1" ]]; do
    sleep 1
  done
}
wait_until_boot_complete

##########################################################################################
# BATAS SUCI :V
##########################################################################################

# CLEAR CACHE
rm -rf /data/data/com.android.systemui/cache/*
rm -rf /data/data/com.android.systemui/code_cache/*
rm -rf /data/user_de/0/com.android.systemui/cache/*
rm -rf /data/user_de/0/com.android.systemui/code_cache/*
rm -rf /data/user/0/com.android.systemui/cache/*
rm -rf /data/user/0/com.android.systemui/code_cache/*

# UNLOCK FPS IN GAMES
setprop ro.vendor.graphics.driver.caps 60
setprop ro.vendor.graphics.driver.drm 60
setprop ro.vendor.graphics.driver.fps 60
setprop ro.vendor.graphics.driver.max_fps 60
setprop ro.vendor.graphics.driver.min_fps 60
setprop ro.vendor.build.fps.eng 1
setprop ro.vendor.build.fps 60
setprop persist.sys.refresh60 1

# GRAPHIC PROPERTIES
setprop ro.surface_flinger.has_HDR_display true
setprop ro.surface_flinger.has_wide_color_display true
setprop ro.surface_flinger.max_frame_buffer_acquired_buffers 3
setprop ro.surface_flinger.max_virtual_display_dimension 4096
setprop ro.surface_flinger.protected_contents true
setprop ro.surface_flinger.supports_background_blur 0
setprop ro.surface_flinger.running_without_sync_framework true
setprop ro.surface_flinger.use_color_management true
setprop ro.surface_flinger.force_hwc_copy_for_virtual_displays true

# MINFREE
setprop persist.sys.minfree_6g 16384,20480,32768,131072,230400,286720
setprop persist.sys.minfree_8g 16384,20480,32768,131072,384000,524288
setprop persist.sys.minfree_12g 16384,20480,131072,384000,524288,819200
setprop persist.sys.minfree_def 16384,20480,32768,131072,230400,286720

# GRAPHIC ENHANCED
setprop debug.egl.hw 1
setprop debug.mdpcomp.logs 0
setprop debug.sf.enable_advanced_sf_phase_offset 1
setprop debug.sf.enable_hwc_vds 1
setprop debug.sf.enable_gl_backpressure 1
setprop debug.sf.hw 1
setprop debug.sf.latch_unsignaled 1
setprop persist.vendor.color.matrix 2
setprop vendor.gralloc.disable_ubwc 0

# OPTIMIZE GRAPHICS PERFORMANCE
setprop ro.config.low_ram true
setprop ro.config.gpu_speed high
setprop ro.config.gpu_governor performance

# QTI CORE CTL
setprop ro.vendor.qti.core.ctl_max_cpu 4
setprop ro.vendor.qti.core.ctl_min_cpu 2

# TOUCH ENHANCED
setprop persist.vendor.qti.inputopts.enable true
setprop persist.vendor.qti.inputopts.movetouchslop 0.6

# COMPOSITION TYPE
setprop debug.composition.type gpu
setprop debug.sf.enable_gl_backpressure 1
setprop persist.sys.composition.type gpu
setprop hwui.disable_vsync true

# GPU PERF PROPS
setprop ro.config.enable.hw_accel true
setprop ro.product.gpu.driver 1
setprop ro.fb.mode 1
setprop ro.sf.compbypass.enable 0
setprop debug.enabletr true
setprop debug.overlayui.enable 1
setprop hwui.disable_vsync true
setprop hwui.render_dirty_regions false
setprop hw3d.force 1
setprop persist.sys.ui.hw 1
setprop video.accelerate.hw 1
