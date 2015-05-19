if [ $# -ne 1 ];
then
	echo "Specify valid argument"
	echo "Usage: $0 <path>"
	exit
fi

p=$1

if [  -e $p ];
then
	if [ -r $p  -a  -w  $p   -a  -x  $p ];
	then
		echo "You are having all permissions"
	elif [ -r $p  -a  -w $p ];
	then
		echo "You are having read and write permissions"
	elif [ -r $p  -a  -x $p ];
	then
		echo "You are having read and execute permissions"
	elif [ -w $p  -a  -x $p ];
	then
		echo "You are having write and execute permissions"
	elif [ -r $p ];
	then
		echo "You are having read only permissions"
	elif [ -w $p ];
	then
		echo "You are having write only permissions"
	elif [ -x $p ];
	then
		echo "You are having execute only permissions"
	else
		echo "You are having no permissions"
	fi
else
	echo "Given path is not existed..."
fi
