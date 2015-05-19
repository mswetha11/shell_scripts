echo "Input two values"
read a b

if [ $a -ne $b ];
then
	if [ $a -gt $b ];
	then
		echo "$a is big"
	else
		echo "$b is big"
	fi
else
	echo "Both are equal"
fi
