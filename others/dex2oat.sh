#!/system/bin/sh
# Move oat files to /system
mount -o remount,rw /

# Inputmethod
mkdir /system/product/app/Inputmethod/oat
chmod 755 /system/product/app/Inputmethod/oat
mkdir /system/product/app/Inputmethod/oat/arm64
chmod 755 /system/product/app/Inputmethod/oat/arm64
mv -f /data/dalvik-cache/arm64/system@product@app@Inputmethod@Inputmethod.apk@classes.dex /system/product/app/Inputmethod/oat/arm64/Inputmethod.odex
mv -f /data/dalvik-cache/arm64/system@product@app@Inputmethod@Inputmethod.apk@classes.vdex /system/product/app/Inputmethod/oat/arm64/Inputmethod.vdex
chmod 644 /system/product/app/Inputmethod/oat/arm64/Inputmethod.odex
chgrp 0 /system/product/app/Inputmethod/oat/arm64/Inputmethod.odex
chown 0 /system/product/app/Inputmethod/oat/arm64/Inputmethod.odex
chmod 644 /system/product/app/Inputmethod/oat/arm64/Inputmethod.vdex
chgrp 0 /system/product/app/Inputmethod/oat/arm64/Inputmethod.vdex
chown 0 /system/product/app/Inputmethod/oat/arm64/Inputmethod.vdex

mount -o remount,ro /
