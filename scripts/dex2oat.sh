#!/system/bin/sh
mount -o remount,rw /

# Move Inputmethod oat files into system partition
if [ -f /data/dalvik-cache/arm64/system@product@app@Inputmethod@Inputmethod.apk@classes.dex ]; then
    mkdir -p /system/product/app/Inputmethod/oat/arm64/
    mv -f /data/dalvik-cache/arm64/system@product@app@Inputmethod@Inputmethod.apk@classes.dex /system/product/app/Inputmethod/oat/arm64/Inputmethod.odex
    mv -f /data/dalvik-cache/arm64/system@product@app@Inputmethod@Inputmethod.apk@classes.vdex /system/product/app/Inputmethod/oat/arm64/Inputmethod.vdex
    chown -R 0:0 /system/product/app/Inputmethod/
    chmod -R 755 /system/product/app/Inputmethod/
    chmod 644 $(find /system/product/app/Inputmethod/ -type f)
    restorecon -R /system/product/app/Inputmethod/
fi

# Move Webview oat files into system partition
if [ -f /data/dalvik-cache/arm64/system@product@app@webview@webview.apk@classes.dex ]; then
    mkdir -p /system/product/app/webview/oat/arm/
    mkdir -p /system/product/app/webview/oat/arm64/
    mv -f /data/dalvik-cache/arm/system@product@app@webview@webview.apk@classes.dex /system/product/app/webview/oat/arm/webview.odex
    mv -f /data/dalvik-cache/arm/system@product@app@webview@webview.apk@classes.vdex /system/product/app/webview/oat/arm/webview.vdex
    mv -f /data/dalvik-cache/arm64/system@product@app@webview@webview.apk@classes.dex /system/product/app/webview/oat/arm64/webview.odex
    mv -f /data/dalvik-cache/arm64/system@product@app@webview@webview.apk@classes.vdex /system/product/app/webview/oat/arm64/webview.vdex
    chown -R 0:0 /system/product/app/webview/
    chmod -R 755 /system/product/app/webview/
    chmod 644 $(find /system/product/app/webview/ -type f)
    restorecon -R /system/product/app/webview/
fi

# Do fstrim to all volumes
for volume in /*; do
    [ -d $volume ] && fstrim -v $volume
done

sm fstrim && sync

mount -o remount,ro /
