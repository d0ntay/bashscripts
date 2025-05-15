echo "Begging Compression..."
Time=$(timedatectl | grep Local | awk '{print $4}')
Filename="log_archive_$Time.tar.gz"
tar -czvf "$Filename" "$1"
rm -rf "$1"
