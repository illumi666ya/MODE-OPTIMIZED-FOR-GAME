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
coc
codm
hok
hokg
lol
mlbb
ffmax
ff

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

sleep 20
# HONOR OF KINGS GLOBAL 
hokg() {
cmd game mode performance com.levelinfinite.sgameGlobal
device_config put game_overlay com.levelinfinite.sgameGlobal mode=2,fps=120
dumpsys deviceidle whitelist +com.levelinfinite.sgameGlobal
appops set com.levelinfinite.sgameGlobal RUN_IN_BACKGROUND allow
cmd package compile -m everything-profile -f com.levelinfinite.sgameGlobal
cmd package compile -m speed --secondary-dex -f com.levelinfinite.sgameGlobal
cmd package compile -m speed --check-prof false -f com.levelinfinite.sgameGlobal
cmd package compile -r first-boot -f com.levelinfinite.sgameGlobal
}
hokg > /dev/null 2>&1

sleep 20
# LEAGUE OF LEGENDS WILD RIFT
lol() {
cmd game mode performance com.riotgames.league.wildrift
device_config put game_overlay com.riotgames.league.wildrift mode=2,fps=120
dumpsys deviceidle whitelist +com.riotgames.league.wildrift
appops set com.riotgames.league.wildrift RUN_IN_BACKGROUND allow
cmd package compile -m everything-profile -f com.riotgames.league.wildrift
cmd package compile -m speed --secondary-dex -f com.riotgames.league.wildrift
cmd package compile -m speed --check-prof false -f com.riotgames.league.wildrift
cmd package compile -r first-boot -f com.riotgames.league.wildrift
}
lol > /dev/null 2>&1

sleep 20
# MOBILE LEGENDS BANG BANG
mlbb() {
cmd game mode performance com.mobile.legends
device_config put game_overlay com.mobile.legends mode=2,fps=120
dumpsys deviceidle whitelist +com.mobile.legends
appops set com.mobile.legends RUN_IN_BACKGROUND allow
cmd package compile -m everything-profile -f com.mobile.legends
cmd package compile -m speed --secondary-dex -f com.mobile.legends
cmd package compile -m speed --check-prof false -f com.mobile.legends
cmd package compile -r first-boot -f com.mobile.legends
}
mlbb > /dev/null 2>&1

sleep 20
# FIRE FREE MAX
ffmax() {
cmd game mode performance com.dts.freefiremax
device_config put game_overlay com.dts.freefiremax mode=2,fps=120
dumpsys deviceidle whitelist +com.dts.freefiremax
appops set com.dts.freefiremax RUN_IN_BACKGROUND allow
cmd package compile -m everything-profile -f com.dts.freefiremax
cmd package compile -m speed --secondary-dex -f com.dts.freefiremax
cmd package compile -m speed --check-prof false -f com.dts.freefiremax
cmd package compile -r first-boot -f com.dts.freefiremax
}
ffmax > /dev/null 2>&1

sleep 20
# FIRE FREE
ff() {
cmd game mode performance com.dts.freefireth
device_config put game_overlay com.dts.freefireth mode=2,fps=120
dumpsys deviceidle whitelist +com.dts.freefireth
appops set com.dts.freefireth RUN_IN_BACKGROUND allow
cmd package compile -m everything-profile -f com.dts.freefireth
cmd package compile -m speed --secondary-dex -f com.dts.freefireth
cmd package compile -m speed --check-prof false -f com.dts.freefireth
cmd package compile -r first-boot -f com.dts.freefireth
}
ff > /dev/null 2>&1

done
exit 0