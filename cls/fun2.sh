add()
{
	x=$1
	y=$2

	echo "x : $x"
	echo "y : $y"

	echo "Result : `expr $x + $y`"

}

echo "hi"

add

a=$1
b=$2

echo "a : $a"
echo "b : $b"
