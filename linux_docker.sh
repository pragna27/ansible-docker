
echo "Create container from the docker image for ubuntu"
docker run -d -P --name c_ubuntu_sshd pragna_sshd 

container_port=`docker port c_ubuntu_sshd 22`
final_container_port=`echo "$container_port" | awk -F":" '{ print $2}'`
echo "container_port is $final_container_port"

if [ -n $final_container_port ]; then
    echo "write into ansible hosts file"
    echo "[servers]" > hosts
    echo "server1 ansible_host=localhost ansible_connection=ssh ansible_user=root ansible_port=$final_container_port ansible_ssh_pass=screencast" >> hosts
else
    exit 1
fi


echo "Create container from docker image for centos"
docker run -d -P --name c_centos_sshd pragna_sshd_centos
container_port=`docker port c_centos_sshd 22`
final_container_port=`echo "$container_port" | awk -F":" '{ print $2}'`
echo "container_port is $final_container_port"

if [ -n $final_container_port ]; then
    echo "write into ansible hosts file"
    echo "server2 ansible_host=localhost ansible_connection=ssh ansible_user=root ansible_port=$final_container_port ansible_ssh_pass=password" >> hosts
else
    exit 1
fi

export ANSIBLE_HOST_KEY_CHECKING=False
