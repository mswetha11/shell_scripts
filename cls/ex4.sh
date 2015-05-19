echo -e  "Current Directory \t Current User \t Current Shell" > /myreport
echo -e "----------------- \t ------------ \t -----------"  >> /myreport

echo -e "`pwd` \t\t\t `whoami` \t\t $SHELL" >> /myreport

echo "Report has generated : /myreport"
