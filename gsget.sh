#!/bin/bash
echo -e "#==============================================================# "
echo -e  "# Name:         Script for GET files into GCP Storage         #"
echo -e  "# Description:  Install php5.6-fpm fast-cgi at ec2 instance   #"
echo -e  "# Version:      V.Karya Anak Bangsa.1.1                       #"
echo -e  "# Author     :  DevOps@blibli.com                     		    #"
echo -e  "# License:      GNU General Public License, version 3 (GPLv3) #"
echo -e  "# License URI:  http://www.gnu.org/licenses/gpl-3.0.html      #"
echo -e  "#=============================================================#"
# gsutil -m cp -r dir gs://my-bucket

echo -e "THIS FOT GET FILES FROM STORGE INTO SERVER ";

echo -e "gsUtil link ? : \n the format must like gs://my-bucket !!! ";
echo "input bucketName : (must corectly format, gs://my-bucket)";
read bucketName;
echo -e "which folder will be put into gStorage ? : \n the format must like /etc/apache/ !!! ";
echo "input Dirname : (must corectly format, like /etc/apache/)";
read fileDir;
sudo screen gsutil -m cp -r $bucketName $fileDir ;
