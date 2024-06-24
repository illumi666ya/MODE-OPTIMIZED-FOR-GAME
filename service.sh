# ILLUMI
# DEMONICA
# www.bento.me/illumi

# SERVICE.SH
# MODDIR
MODDIR=${0%/*}

# DETECT BOOT IF COMPLETE OR NOT FROM KTWEAK (TYTYDRACO) , THANKS
while [[ "$(getprop sys.boot_completed)" -ne 1 ]] && [[ ! -d "/sdcard" ]]
do
       sleep 1
done

# WAIT FOR BOOT TO FINISH COMPLETELY
dbg "Sleeping until boot completes."
while [[ `getprop sys.boot_completed` -ne 1 ]]
do
       sleep 1
done

# WAIT TO THE BOOT BE COMPLETED
sleep_needed_time() {
until [[ $(getprop sys.boot_completed) -eq 1 || $(getprop dev.bootcomplete) -eq 1 ]]; do
sleep 1
done
}

sleep_needed_time

##########################################################################################
# BATAS SUCI :V
##########################################################################################

sync

sleep 20
# CLASH OF CLAN
coc() {
cmd game mode performance com.supercell.clashofclans
device_config put game_overlay com.supercell.clashofclans mode=2,fps=120
dumpsys deviceidle whitelist +com.supercell.clashofclans
appops set com.supercell.clashofclans RUN_IN_BACKGROUND allow
cmd package compile -m everything-profile -f com.supercell.clashofclans
cmd package compile -m speed --secondary-dex -f com.supercell.clashofclans
cmd package compile -m speed --check-prof false -f com.supercell.clashofclans
cmd package compile -r first-boot -f com.supercell.clashofclans
}
coc > /dev/null 2>&1

sleep 20
# CALL OF DUTY MOBILE
codm() {
cmd game mode performance com.garena.game.codm
device_config put game_overlay com.garena.game.codm mode=2,fps=120
dumpsys deviceidle whitelist +com.garena.game.codm
appops set com.garena.game.codm RUN_IN_BACKGROUND allow
cmd package compile -m everything-profile -f com.garena.game.codm
cmd package compile -m speed --secondary-dex -f com.garena.game.codm
cmd package compile -m speed --check-prof false -f com.garena.game.codm
cmd package compile -r first-boot -f com.garena.game.codm
}
codm > /dev/null 2>&1

sleep 20
# HONOR OF KINGS
hok() {
cmd game mode performance com.levelinfinite.sgameGlobal.midaspay
device_config put game_overlay com.levelinfinite.sgameGlobal.midaspay mode=2,fps=120
dumpsys deviceidle whitelist +com.levelinfinite.sgameGlobal.midaspay
appops set com.levelinfinite.sgameGlobal.midaspay RUN_IN_BACKGROUND allow
cmd package compile -m everything-profile -f com.levelinfinite.sgameGlobal.midaspay
cmd package compile -m speed --secondary-dex -f com.levelinfinite.sgameGlobal.midaspay
cmd package compile -m speed --check-prof false -f com.levelinfinite.sgameGlobal.midaspay
cmd package compile -r first-boot -f com.levelinfinite.sgameGlobal.midaspay
}
hok > /dev/null 2>&1

done
exit 0