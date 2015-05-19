sz=`df -h | grep -w / | awk '{print $5}' |awk -F% '{print $1}'`

if [ $sz -ge 90 ];
then
	echo "Root size is in critical position" > /file1
	mail -s "subject" -c id1 mail@gmail.com < /file1
else
	echo "Root size is normal" > /file1

  ## get and verify server time and then only send mail
	mail -s "subject" -c id1 mail@gmail.com < /file1
fi
