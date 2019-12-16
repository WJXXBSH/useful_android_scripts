#!/sbin/sh
#
# ADDOND_VERSION=2
#
# /system/addon.d/60-MicroG.sh
# During a LineageOS 16.0 upgrade, this script backs up MicroG stuff,
# /system is formatted and reinstalled, then the file is restored.
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
app/IchnaeaBackend/IchnaeaBackend.apk
app/NominatimBackend/NominatimBackend.apk
etc/default-permissions/microg-permissions.xml
etc/default-permissions/phonesky-permissions.xml
etc/permissions/features.xml
etc/permissions/privapp-permissions-google.xml
etc/init.d/logscleaner
etc/sysconfig/microg.xml
priv-app/FakeStore/FakeStore.apk
priv-app/GmsCore/GmsCore.apk
priv-app/GmsCore/lib/arm64/libconscrypt_jni.so
priv-app/GmsCore/lib/arm64/libvtm-jni.so
priv-app/GsfProxy/GsfProxy.apk
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/"$FILE" "$R"
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac

# Restore Permission
chmod 755 /system/app/IchnaeaBackend/
chmod 755 /system/app/NominatimBackend/
chmod 755 /system/priv-app/FakeStore/
chmod 755 /system/priv-app/GmsCore/
chmod 755 /system/priv-app/GmsCore/lib/
chmod 755 /system/priv-app/GmsCore/lib/arm64/
chmod 755 /system/priv-app/GsfProxy/

# Prepare for dex2oat
mkdir /system/app/IchnaeaBackend/oat/
mkdir /system/app/IchnaeaBackend/oat/arm64/
mkdir /system/app/NominatimBackend/oat/
mkdir /system/app/NominatimBackend/oat/arm64/
mkdir /system/priv-app/FakeStore/oat/
mkdir /system/priv-app/FakeStore/oat/arm64/
mkdir /system/priv-app/GmsCore/oat/
mkdir /system/priv-app/GmsCore/oat/arm64/
mkdir /system/priv-app/GsfProxy/oat/
mkdir /system/priv-app/GsfProxy/oat/arm64/
chmod 755 /system/app/IchnaeaBackend/oat/
chmod 755 /system/app/IchnaeaBackend/oat/arm64/
chmod 755 /system/app/NominatimBackend/oat/
chmod 755 /system/app/NominatimBackend/oat/arm64/
chmod 755 /system/priv-app/FakeStore/oat/
chmod 755 /system/priv-app/FakeStore/oat/arm64/
chmod 755 /system/priv-app/GmsCore/oat/
chmod 755 /system/priv-app/GmsCore/oat/arm64/
chmod 755 /system/priv-app/GsfProxy/oat/
chmod 755 /system/priv-app/GsfProxy/oat/arm64/
