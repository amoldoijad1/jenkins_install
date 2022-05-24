#!/bin/bash
### installation of Jenkins ##

yum install java-1.8.0-openjdk-devel.x86_64 -y
yum install git -y

cd /mnt/

mkdir server maven project

cd /mnt/server/

wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.63/bin/apache-tomcat-9.0.63.zip

unzip apache-tomcat-9.0.63.zip

chmod -R 755 apache-tomcat-9.0.63

rm -rf apache-tomcat-9.0.63.zip

cd apache-tomcat-9.0.63

cd bin

./startup.sh

cd ../webapps/

wget https://get.jenkins.io/war-stable/2.332.3/jenkins.war
cd /mnt/maven
wget https://dlcdn.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.zip

unzip apache-maven-3.8.5-bin.zip

rm -rf apache-maven-3.8.5-bin.zip
