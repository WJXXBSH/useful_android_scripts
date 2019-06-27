#!/system/bin/sh
# Restore
if [ -f "/data/local/tmp/check_enabled" ]; then
echo "Restoring..."
rm -f "/data/local/tmp/check_enabled"
mount -o remount,rw /system
#mv -f /system/bin/hw/perf_config_0.xml /system/bin/adbd
mv -f /system/bin/hw/perf_config_1.xml /system/bin/dumpsys
mv -f /system/bin/hw/perf_config_2.xml /system/bin/cmd
pm unhide com.github.shadowsocks
pm enable com.github.shadowsocks
pm unhide org.telegram.messenger
pm enable org.telegram.messenger
pm enable com.android.shell
chmod 771 /data/app/
mount -o remount,ro /system
settings put global adb_enabled 1
exit 1
fi

# Security check (Anti-MFS)
if [ ! -f "/data/local/tmp/check_enabled" ]; then
echo "Processing..."
touch "/data/local/tmp/check_enabled"
mount -o remount,rw /system
pm hide com.github.shadowsocks
pm disable com.github.shadowsocks
pm hide org.telegram.messenger
pm disable org.telegram.messenger
pm disable com.android.shell
#mv -f /system/bin/adbd /system/bin/hw/perf_config_0.xml
mv -f /system/bin/dumpsys /system/bin/hw/perf_config_1.xml
mv -f /system/bin/cmd /system/bin/hw/perf_config_2.xml
chmod 551 /data/app/
rm -rf /data/media/0/Android/data/org.telegram.messenger/
rm -rf /data/media/0/Android/data/com.github.shadowsocks/
mount -o remount,ro /system
settings put global adb_enabled 0
setprop persist.sys.root_access 0
fi
