#!/system/bin/sh
# Move Inputmethod oat files into system partition
mount -o remount,rw /

mkdir -p /system/product/app/Inputmethod/oat/arm64
mv -f /data/dalvik-cache/arm64/system@product@app@Inputmethod@Inputmethod.apk@classes.dex /system/product/app/Inputmethod/oat/arm64/Inputmethod.odex
mv -f /data/dalvik-cache/arm64/system@product@app@Inputmethod@Inputmethod.apk@classes.vdex /system/product/app/Inputmethod/oat/arm64/Inputmethod.vdex
chgrp -R root /system/product/app/Inputmethod
chown -R root /system/product/app/Inputmethod
chmod -R 755 /system/product/app/Inputmethod
chmod 644 $(find /system/product/app/Inputmethod -type f)
restorecon /system/product/app/Inputmethod/oat/arm64/Inputmethod.odex
restorecon /system/product/app/Inputmethod/oat/arm64/Inputmethod.vdex

mount -o remount,ro /
