echo "ENTER THE URL TO DOWNLOAD THE MAVEN FILE"
read url_name
tar_file=`wget $url_name`
tar_extract=`tar -xvf $tar_file`
mv $tar_extract maven
rm -rf $tar_file

## ADDING THE MAVEN PATH TO THE PATH VARIABLE

echo "export M2_HOME=/opt/maven" >> ~/.bashrc
echo "export M2=$M2_HOME/bin" >> ~/.bashrc
echo "export PATH=$M2:$PATH" ?? ~/.bashrc

## RESTARTING /.bashrc file
