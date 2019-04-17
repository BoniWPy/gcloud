#!/bin/bash
echo -e "#==============================================================# "
echo -e  "# Name:         Script for instaling GCloudPlatform           #"
echo -e  "# Description:  Install php5.6-fpm fast-cgi at ec2 instance   #"
echo -e  "# Version:      V.Karya Anak Bangsa.1.1                       #"
echo -e  "# Author     :  DevOps@blibli.com                     		#"
echo -e  "# License:      GNU General Public License, version 3 (GPLv3) #"
echo -e  "# License URI:  http://www.gnu.org/licenses/gpl-3.0.html      #"
echo -e  "#=============================================================#"

export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" ;
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list ;
sudo curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - ;
sudo apt-get update && sudo apt-get install -y google-cloud-sdk
sudo apt-get install google-cloud-sdk-app-engine-java
sudo gcloud init --skip-diagnostics
