Check if the downloaded file matches the md5sum in the repo command usage ./checksum.sh filename reponame

md5sum $1 > '$date +"%r"'.tmp
cat repo/$2 | grep $1 | awk '{print $2}' > '$date +"%r"'.tmp
./compare.sh *.tmp
rm *.tmp
