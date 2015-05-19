echo -e  "Input username : \c"
read un

count=`find / -user $un -type f | wc -l`

echo "No. of Files for the User $un : $count"
