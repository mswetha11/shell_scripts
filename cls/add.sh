k=1
s=0

while [ $k -le $# ];
do
	s=`expr $s + $1`
	shift
done

echo "Result : $s"
