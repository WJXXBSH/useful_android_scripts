#!/system/bin/sh
# Move oat files to /system
mount -o remount,rw /system

# IchnaeaBackend
mv -f /data/dalvik-cache/arm64/system@app@IchnaeaBackend@IchnaeaBackend.apk@classes.dex /system/app/IchnaeaBackend/oat/arm64/IchnaeaBackend.odex
mv -f /data/dalvik-cache/arm64/system@app@IchnaeaBackend@IchnaeaBackend.apk@classes.vdex /system/app/IchnaeaBackend/oat/arm64/IchnaeaBackend.vdex
chmod 644 /system/app/IchnaeaBackend/oat/arm64/IchnaeaBackend.odex
chgrp 0 /system/app/IchnaeaBackend/oat/arm64/IchnaeaBackend.odex
chown 0 /system/app/IchnaeaBackend/oat/arm64/IchnaeaBackend.odex
chmod 644 /system/app/IchnaeaBackend/oat/arm64/IchnaeaBackend.vdex
chgrp 0 /system/app/IchnaeaBackend/oat/arm64/IchnaeaBackend.vdex
chown 0 /system/app/IchnaeaBackend/oat/arm64/IchnaeaBackend.vdex

# Inputmethod
mv -f /data/dalvik-cache/arm64/system@app@Inputmethod@Inputmethod.apk@classes.dex /system/app/Inputmethod/oat/arm64/Inputmethod.odex
mv -f /data/dalvik-cache/arm64/system@app@Inputmethod@Inputmethod.apk@classes.vdex /system/app/Inputmethod/oat/arm64/Inputmethod.vdex
chmod 644 /system/app/Inputmethod/oat/arm64/Inputmethod.odex
chgrp 0 /system/app/Inputmethod/oat/arm64/Inputmethod.odex
chown 0 /system/app/Inputmethod/oat/arm64/Inputmethod.odex
chmod 644 /system/app/Inputmethod/oat/arm64/Inputmethod.vdex
chgrp 0 /system/app/Inputmethod/oat/arm64/Inputmethod.vdex
chown 0 /system/app/Inputmethod/oat/arm64/Inputmethod.vdex

# NominatimBackend
mv -f /data/dalvik-cache/arm64/system@app@NominatimBackend@NominatimBackend.apk@classes.dex /system/app/NominatimBackend/oat/arm64/NominatimBackend.odex
mv -f /data/dalvik-cache/arm64/system@app@NominatimBackend@NominatimBackend.apk@classes.vdex /system/app/NominatimBackend/oat/arm64/NominatimBackend.vdex
chmod 644 /system/app/NominatimBackend/oat/arm64/NominatimBackend.odex
chgrp 0 /system/app/NominatimBackend/oat/arm64/NominatimBackend.odex
chown 0 /system/app/NominatimBackend/oat/arm64/NominatimBackend.odex
chmod 644 /system/app/NominatimBackend/oat/arm64/NominatimBackend.vdex
chgrp 0 /system/app/NominatimBackend/oat/arm64/NominatimBackend.vdex
chown 0 /system/app/NominatimBackend/oat/arm64/NominatimBackend.vdex

# FakeStore
mv -f /data/dalvik-cache/arm64/system@priv-app@FakeStore@FakeStore.apk@classes.dex /system/priv-app/FakeStore/oat/arm64/FakeStore.odex
mv -f /data/dalvik-cache/arm64/system@priv-app@FakeStore@FakeStore.apk@classes.vdex /system/priv-app/FakeStore/oat/arm64/FakeStore.vdex
chmod 644 /system/priv-app/FakeStore/oat/arm64/FakeStore.odex
chgrp 0 /system/priv-app/FakeStore/oat/arm64/FakeStore.odex
chown 0 /system/priv-app/FakeStore/oat/arm64/FakeStore.odex
chmod 644 /system/priv-app/FakeStore/oat/arm64/FakeStore.vdex
chgrp 0 /system/priv-app/FakeStore/oat/arm64/FakeStore.vdex
chown 0 /system/priv-app/FakeStore/oat/arm64/FakeStore.vdex

# GmsCore
mv -f /data/dalvik-cache/arm64/system@priv-app@GmsCore@GmsCore.apk@classes.dex /system/priv-app/GmsCore/oat/arm64/GmsCore.odex
mv -f /data/dalvik-cache/arm64/system@priv-app@GmsCore@GmsCore.apk@classes.vdex /system/priv-app/GmsCore/oat/arm64/GmsCore.vdex
chmod 644 /system/priv-app/GmsCore/oat/arm64/GmsCore.odex
chgrp 0 /system/priv-app/GmsCore/oat/arm64/GmsCore.odex
chown 0 /system/priv-app/GmsCore/oat/arm64/GmsCore.odex
chmod 644 /system/priv-app/GmsCore/oat/arm64/GmsCore.vdex
chgrp 0 /system/priv-app/GmsCore/oat/arm64/GmsCore.vdex
chown 0 /system/priv-app/GmsCore/oat/arm64/GmsCore.vdex

# GsfProxy
mv -f /data/dalvik-cache/arm64/system@priv-app@GsfProxy@GsfProxy.apk@classes.dex /system/priv-app/GsfProxy/oat/arm64/GsfProxy.odex
mv -f /data/dalvik-cache/arm64/system@priv-app@GsfProxy@GsfProxy.apk@classes.vdex /system/priv-app/GsfProxy/oat/arm64/GsfProxy.vdex
chmod 644 /system/priv-app/GsfProxy/oat/arm64/GsfProxy.odex
chgrp 0 /system/priv-app/GsfProxy/oat/arm64/GsfProxy.odex
chown 0 /system/priv-app/GsfProxy/oat/arm64/GsfProxy.odex
chmod 644 /system/priv-app/GsfProxy/oat/arm64/GsfProxy.vdex
chgrp 0 /system/priv-app/GsfProxy/oat/arm64/GsfProxy.vdex
chown 0 /system/priv-app/GsfProxy/oat/arm64/GsfProxy.vdex

mount -o remount,ro /system
