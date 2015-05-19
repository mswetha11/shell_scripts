#! bin/sh

# This is the script to deploy war file in application server using Jenkins job

if [ $# -ne 4 ];
then
	echo "You have to pass 4 valid arguments...(server1, server2 , war location, user)"
	echo "Usage: $0 <server1>  <server2>  <war_file_location>  <username>
	
	exit
fi

echo "Deploying war file in the application servers"
echo "==============================================="

# Define variables

server1=$1

server2=$2

war_loc=$3

user=$4

echo  "Stopping the application server on $server1"

sshpass -p "password" ssh ${user}@${server1} /opt/apps/tomcat7/bin/shutdown.sh


echo  "Stopping the application server on $server2"

sshpass -p "password" ssh ${user}@${server2} /opt/apps/tc-instance/tc1-shudown.sh


echo  "Taking the backup of the old war file on $server1"

sshpass -p "password" ssh ${user}@${server1}  cp  /opt/apps/tomcat7/webapps/helloWorld-0.1-dev.war /root/work/buildbackup/helloWorld-0.1-dev.war.`date '+%d%m$Y'`


echo  "Taking the backup of the old war file on $server2"

sshpass -p "password" ssh ${user}@${server2}  cp  /opt/apps/tc-instance/webapps/helloWorld-0.1-dev.war  /root/work/buildbackup/helloWorld-0.1-dev.war.`date '+%d%m$Y'`



echo "Removing the old war file from the webapps location on $server1"

sshpass -p "password" ssh ${user}@${server1} rm -rf /opt/apps/tomcat7/webapps/helloWorld-0.1-dev*


echo "Removing the old war file from the webapps location on $server2"

sshpass -p "password" ssh ${user}@${server2} rm -rf /opt/apps/tc-instance/webapps/helloWorld-0.1-dev*



echo "Copying new war file into webapps location on $server1"

sshpass -p "password" ssh  ${user}@${server1} "cp ${war_loc} /opt/apps/tomcat7/webapps/"


echo "Copying new war file into webapps location on $server2"

sshpass -p "password" ssh  ${user}@${server2} "cp ${war_loc} /opt/apps/tc-instance/webapps/"



echo  "Starting the application server on $server1"

sshpass -p "password" ssh  ${user}@${server1} "/opt/apps/tomcat7/bin/startup.sh"


echo  "Starting the application server on $server2"

sshpass -p "password" ssh  ${user}@${server2} "/opt/apps/tc-instance/tc1-startup.sh"



echo  "Deployment of new war file into application server is completed on $server1"

echo  "Deployment of new war file into application server is completed on $server2"
