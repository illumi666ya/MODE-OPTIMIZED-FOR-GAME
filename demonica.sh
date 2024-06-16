# 𝕯𝖊𝖒𝖔𝖓𝖎𝖈𝖆
# 𝕴𝖑𝖑𝖚𝖒𝖎
# 𝟔𝟔𝟔

# 𝐃𝐄𝐌𝐎𝐍𝐈𝐂𝐀.𝐒𝐇

# 𝐒𝐄𝐓
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true
# 𝐒𝐊𝐈𝐏 𝐔𝐍𝐙𝐈𝐏
SKIPUNZIP=0
# 𝐒𝐄𝐓 𝐏𝐄𝐑𝐌𝐈𝐒𝐒𝐈𝐎𝐍𝐒
set_perm_recursive $MODPATH 0 0 0755 0644
# 𝐒𝐄𝐓 𝐏𝐄𝐑𝐌
set_perm  $MODPATH 0 0 0755 0644
set_perm  $MODPATH/system/bin 0 0 0751 0755
set_perm  $MODPATH/system/bin/COC 0 0 0751 0755
set_perm  $MODPATH/system/bin/CODM 0 0 0751 0755
set_perm  $MODPATH/system/bin/HOK 0 0 0751 0755

# 𝐏𝐑𝐈𝐍𝐓𝐌𝐎𝐃𝐍𝐀𝐌𝐄
CREATOR="𝗠𝗢𝗗𝗨𝗟𝗘 𝗕𝗬 𝗜𝗟𝗟𝗨𝗠𝗜 "
VERSION_MODULE="𝗩𝗘𝗥𝗦𝗜𝗢𝗡 𝗗𝗘𝗠𝗢𝗡𝗜𝗧𝗬 "
MODULE_INFO="𝗖𝗵𝗲𝗰𝗸 𝗜𝗻𝗳𝗼 𝗠𝗼𝗱𝘂𝗹𝗲.. "
ID=" `grep_prop id $TMPDIR/module.prop` "
NAME_MODULE=" `grep_prop name $TMPDIR/module.prop` "
VERSION=" `grep_prop version $TMPDIR/module.prop` "
VERSION_CODE=" `grep_prop versionCode $TMPDIR/module.prop` "
DESCRIPTION=" `grep_prop description $TMPDIR/module.prop` "
SUPPORT=" `grep_prop support $TMPDIR/module.prop` "
DEVICE_INFO="𝗚𝗲𝘁𝘁𝗶𝗻𝗴 𝘆𝗼𝘂𝗿 𝗱𝗲𝘃𝗶𝗰𝗲 𝗶𝗻𝗳𝗼.. "
BRAND=" $(getprop ro.product.brand) "
MODEL=" $(getprop ro.product.model) "
CODE_DEVICE=" $(getprop ro.product.system.device) "
HARDWARE=" $(getprop ro.product.board) "
CHIPSET=" $(getprop ro.hardware) "
ANDROID=" $(getprop ro.system.build.version.release) "
RAM=" $(free | grep Mem | awk '{print $2}') "
ROM_INFO="𝗚𝗲𝘁𝘁𝗶𝗻𝗴 𝘆𝗼𝘂𝗿 𝗿𝗼𝗺 𝗶𝗻𝗳𝗼.. "
ROM=" $(getprop ro.product.vendor.name) "
BUILD=" $(getprop ro.build.date) "
KERNEL=" $(uname -r) "
SDK=" $API "
SECURITY_PATCH=" $(getprop ro.build.version.security_patch) "
SYSTEM_STRUCTURE=" $ARCH "
MAGISK_INSTALL="𝗠𝗮𝗴𝗶𝘀𝗸 𝘃𝗲𝗿𝘀𝗶𝗼𝗻 𝗰𝗵𝗲𝗰𝗸.. "
MAGISK=" $MAGISK_VER "
MAGISK_CODE=" $MAGISK_VER_CODE "
KSU_INSTALL="𝗞𝗦𝗨 𝘃𝗲𝗿𝘀𝗶𝗼𝗻 𝗰𝗵𝗲𝗰𝗸.. "
KSU=" $KSU_VER "
KSU_CODE=" $KSU_VER_CODE "
KSU_KERNEL_VER_CODE=" $KSU_KERNEL_VER_CODE "

# 𝐔𝐈 𝐏𝐑𝐈𝐍𝐓
sleep 2
echo " "
echo "╔═════════════════╗"
echo "× $CREATOR "
sleep 2
echo "× $VERSION_MODULE "
sleep 1
echo "╚═════════════════╝"
echo " "

# 𝐌𝐎𝐃𝐔𝐋𝐄 𝐈𝐍𝐅𝐎
echo "× $MODULE_INFO "
sleep 2
echo "× 𝗜𝗗 =$ID "
sleep 1
echo "× 𝗡𝗔𝗠𝗘 =$NAME_MODULE "
sleep 1
echo "× 𝗩𝗘𝗥𝗦𝗜𝗢𝗡 =$VERSION "
sleep 1
echo "× 𝗩𝗘𝗥 𝗖𝗢𝗗𝗘 =$VERSION_CODE "
sleep 1
echo "× 𝗗𝗘𝗦𝗖𝗥𝗜𝗣𝗧𝗜𝗢𝗡 =$DESCRIPTION "
sleep 1
echo "× 𝗦𝗨𝗣𝗣𝗢𝗥𝗧 =$SUPPORT "
sleep 1
echo " "

# 𝐃𝐄𝐕𝐈𝐂𝐄 𝐈𝐍𝐅𝐎
echo "× $DEVICE_INFO "
sleep 2
echo "× 𝗕𝗥𝗔𝗡𝗗 =$BRAND "
sleep 1
echo "× 𝗠𝗢𝗗𝗘𝗟 =$MODEL "
sleep 1
echo "× 𝗖𝗢𝗗𝗘 =$CODE_DEVICE "
sleep 1
echo "× 𝗛𝗔𝗥𝗗𝗪𝗔𝗥𝗘 =$HARDWARE "
sleep 1
echo "× 𝗖𝗛𝗜𝗣𝗦𝗘𝗧 =$CHIPSET "
sleep 1
echo "× 𝗔𝗡𝗗𝗥𝗢𝗜𝗗 =$ANDROID "
sleep 1
echo "× 𝗥𝗔𝗠 =$RAM𝗞𝗕 "
sleep 1
echo " "

# 𝐑𝐎𝐌 𝐈𝐍𝐅𝐎
echo "× $ROM_INFO "
sleep 2
echo "× 𝗥𝗢𝗠 =$ROM "
sleep 1
echo "× 𝗕𝗨𝗜𝗟𝗗 =$BUILD "
sleep 1
echo "× 𝗞𝗘𝗥𝗡𝗘𝗟 =$KERNEL "
sleep 1
echo "× 𝗦𝗗𝗞 =$SDK "
sleep 1
echo "× 𝗦𝗘𝗖𝗨𝗥𝗜𝗧𝗬 𝗣𝗔𝗧𝗖𝗛 =$SECURITY_PATCH "
sleep 1
echo "× 𝗔𝗥𝗖𝗛 =$SYSTEM_STRUCTURE "
sleep 1
echo " "

# 𝐊𝐒𝐔 𝐈𝐍𝐅𝐎
if [ "$KSU" == true ]; then
echo "× $KSU_INSTALL "
sleep 2
echo "× 𝗞𝗦𝗨 𝗩𝗘𝗥𝗦𝗜𝗢𝗡 =$KSU "
sleep 1
echo "× 𝗞𝗦𝗨 𝗩𝗘𝗥 𝗖𝗢𝗗𝗘 =$KSU_CODE "
sleep 1
echo "× 𝗞𝗦𝗨 𝗞𝗘𝗥𝗡𝗘𝗟 𝗩𝗘𝗥 𝗖𝗢𝗗𝗘 =$KSU_KERNEL_VER_CODE "
else

# 𝐌𝐀𝐆𝐈𝐒𝐊 𝐈𝐍𝐅𝐎
echo "× $MAGISK_INSTALL "
sleep 2
echo "× 𝗠𝗔𝗚𝗜𝗦𝗞 𝗩𝗘𝗥𝗦𝗜𝗢𝗡 =$MAGISK "
sleep 1
echo "× 𝗠𝗔𝗚𝗜𝗦𝗞 𝗩𝗘𝗥 𝗖𝗢𝗗𝗘 =$MAGISK_CODE "
fi
sleep 1

# 𝐄𝐗𝐓𝐑𝐀𝐂𝐓𝐈𝐍𝐆
echo " "
echo "× 𝗘𝘅𝘁𝗿𝗮𝗰𝘁𝗶𝗻𝗴 𝗺𝗼𝗱𝘂𝗹𝗲 𝗳𝗶𝗹𝗲𝘀.. "
on_install() {
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
unzip -o "$ZIPFILE" 'common/*' -d $MODPATH >&2
}
sleep 1

# 𝐃𝐄𝐋𝐄𝐓𝐈𝐍𝐆 𝐂𝐀𝐂𝐇𝐄
echo "× 𝗗𝗲𝗹𝗲𝘁𝗶𝗻𝗴 𝗽𝗮𝗰𝗸𝗮𝗴𝗲 𝗰𝗮𝗰𝗵𝗲.. "
rm -rf /data/dalvik-cache
rm -rf /storage/emulated/0/Andorid/*/cache
rm -rf /data/system/cache/*
rm -rf /data/vendor/cache/*
rm -rf /data/misc/cache/*
rm -rf /data/system/package_cache/*
rm -rf /cache/*
rm -rf /data/resource-cache/*
rm -rf `find /data/app/* -name "*.art"`
find /data -type f -name "*.bak" -exec rm -vf {} +
find /data/ -type f -name "*.log" -exec rm -vf {} +
find /data/ -type f -name "*shader" -exec rm -vf {} +
find /data/ -type f -name "*shader_cache" -exec rm -vf {} +
find /data/data -type f -name "gms" -exec rm -vf {} +
find /data/app/ -type f -name "*.art" -exec rm {} +
find /data/data/*/cache/* -delete &>/dev/null
find /data/data/*/code_cache/* -delete &>/dev/null
find /data/data/*/files/log/*.log -delete &>/dev/null
find /data/data/*/cache/*/*/*.log -delete &>/dev/null
find /data/data/*/cache/logs/*/*.log -delete &>/dev/null
find /data/data/*/*/*/*.log -delete &>/dev/null
find /data/data/*/*/*.log -delete &>/dev/null
find /data/user_de/*/*/cache/* -delete &>/dev/null
find /data/user_de/*/*/code_cache/* -delete &>/dev/null
find /data/adb/modules/*/*.log -delete &>/dev/null
find /data/media/0/Android/media/*/*/.shared/*.tmp -delete &>/dev/null
find /storage/emulated/0/ -type f -name "*.nomedia" -exec rm -vf {} +
find /storage/emulated/0/ -name "*.thumbnails" -exec rm -vf {} +
find /storage/emulated/0/ \( -type f -o -type d \) -name '*cache*' -exec rm -rf {} +
find /sdcard/Android/data/*/cache/* -delete &>/dev/null
echo "× 𝗗𝗼𝗻𝗲.."
sleep 1

# 𝐎𝐏𝐓𝐈𝐌𝐈𝐙𝐈𝐍𝐆 𝐀𝐏𝐏𝐒
echo " "
echo "× 𝗢𝗽𝘁𝗶𝗺𝗶𝘇𝗶𝗻𝗴 𝗔𝗽𝗽𝘀.. "
APPS=" $(su -c "cmd package bg-dexopt-job") "
echo "×"$APPS
# 𝐎𝐏𝐄𝐍 𝐀𝐍 𝐀𝐏𝐏 𝐐𝐔𝐈𝐂𝐊𝐋𝐘
am start -n com.example no.app/.MainActivity
sleep 1

# 𝐂𝐑
nohup am start -a android.intent.action.VIEW -d https://bento.me/illumi >/dev/null 2>&1 &
# 𝐍𝐎𝐓𝐈𝐅𝐈𝐂𝐀𝐓𝐈𝐎𝐍
su -lp 2000 -c "cmd notification post -S bigtext -t '`grep_prop name $TMPDIR/module.prop` install successfully.' 'Tag' 'BY ILLUMI '" > /dev/null 2>&1