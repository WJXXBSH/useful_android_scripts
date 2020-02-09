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
product/app/Inputmethod/Inputmethod.apk
product/app/Inputmethod/lib/arm64/liben_data_bundle.so
product/app/Inputmethod/lib/arm64/libgnustl_shared.so
product/app/Inputmethod/lib/arm64/libhmm_gesture_hwr_zh.so
product/app/Inputmethod/lib/arm64/libhwrword.so
product/app/Inputmethod/lib/arm64/libpinyin_data_bundle.so
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
