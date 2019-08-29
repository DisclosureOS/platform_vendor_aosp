for device in $(python vendor/dos/tools/get_official_devices.py)
do
for var in eng user userdebug; do
add_lunch_combo dos_$device-$var
done
done
