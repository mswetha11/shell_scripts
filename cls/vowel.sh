echo "Input a character : "
read c

case $c in
[aeiouAEIOU] ) echo "Vowel"
	;;
* ) echo "Not vowel"
esac
