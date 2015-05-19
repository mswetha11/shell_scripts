if [ $# -ne 1 ];
then
	echo "Specify valid argument"
	echo "Usage: $0 <path>"
	exit
fi

p=$1

if [  -e $p ];
then
	echo "Given path is existed..."

	if [ -f $p ];
	then
		echo "It is a file..."
	elif [ -d $p ];
	then
		echo "It is  a directory..."
	else
		echo "It is special file..."
	fi
else
	echo "Given path is not existed..."
fi
