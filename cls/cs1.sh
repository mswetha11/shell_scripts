echo "Input week number"
read w

case $w in
0 )	echo "Sunday"
	;;
1 )	echo "Monday"
	;;
2 )	echo "Tuesday"
	;;
* )	echo "Invalid week day: Please input from  [0-6]"
esac
