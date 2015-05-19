rm -rf /myrep > /dev/null 2>&1

for p in `cat /mypaths`
do
	fc=`ls -l $p | grep ^- | wc -l`
	dc=`ls -l $p | grep ^d | wc -l`

	echo -e "\n\n$p" >> /myrep
	echo "====================" >> /myrep
	echo "No. of Files : $fc" >> /myrep
	echo "No. of Dirs  : $dc" >> /myrep
done

# mail -s "Files Report" mailid@company.com < /myrep
