#!/sbin/sh
#
# ADDOND_VERSION=2
#
# /system/addon.d/61-Inputmethod.sh
# During a LineageOS 16.0 upgrade, this script backs up /system/app/Inputmethod/,
# /system is formatted and reinstalled, then the file is restored.
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
app/Inputmethod/Inputmethod.apk
app/Inputmethod/lib/arm64/liben_data_bundle.so
app/Inputmethod/lib/arm64/libgnustl_shared.so
app/Inputmethod/lib/arm64/libhmm_gesture_hwr_zh.so
app/Inputmethod/lib/arm64/libhwrword.so
app/Inputmethod/lib/arm64/libpinyin_data_bundle.so
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
chmod 755 /system/app/Inputmethod/
chmod 755 /system/app/Inputmethod/lib/
chmod 755 /system/app/Inputmethod/lib/arm64/

# Prepare for dex2oat
mkdir /system/app/Inputmethod/oat/
mkdir /system/app/Inputmethod/oat/arm64/
chmod 755 /system/app/Inputmethod/oat/
chmod 755 /system/app/Inputmethod/oat/arm64/
