wget "http://serverapp/randomfile" -O /clientdata/clientfile
wget "http://serverapp/md5" -O /clientdata/clientmd5
md5sum /clientdata/clientfile | awk {'print $1'} > /clientdata/genmd5

x=`diff -s /clientdata/genmd5 /clientdata/clientmd5 | awk {'print $1'}`
if [ "$x" == "Files" ]
then
   echo "Files are identical"
else
   echo "ERROR - MD5 didnt match"
fi
