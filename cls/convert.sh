src=/dir1

ls $src > /list

for f in `cat /list`
do
	t=`echo $f | tr [a-z] [A-Z]`

	mv $src/$f $src/$t
done
