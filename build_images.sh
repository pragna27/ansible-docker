
# Builds the docker images from the docker file

echo "Build ubuntu docker file"
docker build -t pragna_sshd /home/pragna/ansible-docker/docker_ubuntu
if [ "$?" != 0 ]; then
   exit 1
else
   echo " " 
   echo "Ubuntu image creation is successful"
fi

echo " "  
echo "Build Centos docker file"
docker build -t pragna_sshd_centos /home/pragna/ansible-docker/docker_centos
if [ "$?" != 0 ]; then
   exit 1
else
   echo " "
   echo "Centos image creation is successful"
fi

