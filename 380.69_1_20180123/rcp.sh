#!/bin/sh
cp meilin/hndnand.h	../release/src-rt-7.14.114.x/src/include/hndnand.h
cp meilin/board_ns.c	../release/src-rt-7.14.114.x/src/linux/linux-2.6.36/arch/arm/mach-brcm-hnd/board_ns.c
cp meilin/config_base.6a	../release/src-rt-7.14.114.x/src/linux/linux-2.6.36/config_base.6a
cp -r yaffs2	../release/src-rt-7.14.114.x/src/linux/linux-2.6.36/fs/

cp meilin/target.mak	../release/src-rt/target.mak
cp meilin/Makefile_router ../release/src/router/Makefile
cp meilin/config_base	../release/src/router/config_base

cp meilin/web.c	../release/src/router/httpd/web.c

cp -r others ../release/src/router/

cp meilin/init.c ../release/src/router/rc/init.c
cp meilin/jffs2.c ../release/src/router/rc/jffs2.c
cp meilin/lan.c ../release/src/router/rc/lan.c
cp meilin/rc.h ../release/src/router/rc/rc.h
cp meilin/services.c ../release/src/router/rc/services.c
cp meilin/broadcom.c ../release/src/router/rc/sysdeps/broadcom/broadcom.c
cp meilin/init-broadcom.c ../release/src/router/rc/sysdeps/init-broadcom.c
cp meilin/wan.c ../release/src/router/rc/wan.c

cp meilin/defaults.c	../release/src/router/shared/defaults.c
cp meilin/dictctrl.txt	../release/src/router/tools/Lnx_AsusWrtDictPrep/dictctrl.txt

cp meilin/Advanced_WANPort_Content.asp ../release/src/router/www/Advanced_WANPort_Content.asp
cp meilin/Advanced_WAdvanced_Content.asp ../release/src/router/www/Advanced_WAdvanced_Content.asp
cp meilin/Advanced_Wireless_Content.asp ../release/src/router/www/Advanced_Wireless_Content.asp
cp meilin/AiProtection_HomeProtection.asp ../release/src/router/www/AiProtection_HomeProtection.asp
cp meilin/CN.dict ../release/src/router/www/CN.dict
cp meilin/EN.dict ../release/src/router/www/EN.dict
cp meilin/Tools_OtherSettings.asp ../release/src/router/www/Tools_OtherSettings.asp
cp meilin/Tools_Sysinfo.asp ../release/src/router/www/Tools_Sysinfo.asp
cp meilin/menuTree_bwdpi_traffic_analyzer.js ../release/src/router/www/require/menuTrees/menuTree_bwdpi_traffic_analyzer.js
cp meilin/menuTree_no_bwdpi.js ../release/src/router/www/require/menuTrees/menuTree_no_bwdpi.js
cp meilin/state.js ../release/src/router/www/state.js
cp meilin/Advanced_Wireless_Content.asp ../release/src/router/www/sysdep/RT-AC66U/www/Advanced_Wireless_Content.asp
