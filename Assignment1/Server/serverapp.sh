cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 1024 | head -n 1 > /serverdata/randomfile
echo "first command run"
md5sum /serverdata/randomfile | awk {'print $1'} > /serverdata/md5
echo "second command run"