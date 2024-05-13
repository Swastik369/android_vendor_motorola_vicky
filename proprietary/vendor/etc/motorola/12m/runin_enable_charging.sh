#!/vendor/bin/sh

#
# Copyright (c) 2020, Motorola Mobility LLC. All Rights Reserved.
#
# The contents of this file are Motorola Confidential Restricted (MCR).
#
# Disable battery charging script, used by Runin application.
#

PATH=/sbin:/vendor/sbin:/vendor/bin:/vendor/xbin
export PATH

PRODUCT=$(getprop ro.product.device)

echo "runin_enable_charge.sh: Executing on product $PRODUCT."

echo "runin_enable_charge.sh: Enabling charge."

echo 1600 > /sys/devices/platform/moto_chg_tcmd/force_chg_iusb

echo 0 0 > proc/mtk_battery_cmd/current_cmd

exit 0

