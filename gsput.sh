#!/bin/bash
echo -e "#==============================================================# "
echo -e  "# Name:         Script for put files into GCP Storage         #"
echo -e  "# Description:  Install php5.6-fpm fast-cgi at ec2 instance   #"
echo -e  "# Version:      V.Karya Anak Bangsa.1.1                       #"
echo -e  "# Author     :  DevOps@blibli.com                     		#"
echo -e  "# License:      GNU General Public License, version 3 (GPLv3) #"
echo -e  "# License URI:  http://www.gnu.org/licenses/gpl-3.0.html      #"
echo -e  "#=============================================================#"
# gsutil -m cp -r dir gs://my-bucket

echo -e "which folder will be put into gStorage ? : \n the format must like /etc/apache/ !!! ";
echo "input Dirname : (must corectly format, like /etc/apache/)";
read fileDir;
echo -e "gsUtil link ? : \n the format must like gs://my-bucket !!! ";
echo "input bucketName : (must corectly format, gs://my-bucket)";
read bucketName;
sudo screen gsutil -m cp -r $fileDir $bucketName;
