#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 21762048 3839ecdaa3609180590607d550b0469d28cc4553 15790080 53adfe61a442fbfec5081cc87e29cb9dbeb29d46
fi
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:21762048:3839ecdaa3609180590607d550b0469d28cc4553; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15790080:53adfe61a442fbfec5081cc87e29cb9dbeb29d46 EMMC:/dev/block/bootdevice/by-name/recovery 3839ecdaa3609180590607d550b0469d28cc4553 21762048 53adfe61a442fbfec5081cc87e29cb9dbeb29d46:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
