#!/system/bin/sh
#Author: Kvnn.exe
DIR=${0%/*}
while [ "$(getprop sys.boot_completed | tr -d '\r')" != "1" ]; do sleep 1; done
if [[ ! -e "/data/adb/modules/YouTubeVanced" ]]; then
       pm uninstall com.google.android.youtube
       pm uninstall ussr.razar.youtube_dl
       pm uninstall at.huber.youtubeDownloader
       [[ -e "$DIR/YT.Check.sh" ]] && rm -f $DIR/YT.Check.sh
fi