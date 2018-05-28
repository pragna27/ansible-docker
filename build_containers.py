#!/usr/bin/python

#pp186048_centos_sshd
#pp186048_ubuntu_sshd

#p = Popen("docker run -i -t --name="%s" dockerfile/python /bin/bash", stdin=PIPE)
#p.communicate("timeout 0.5 python | head -n 500000 \n" % run_this) 

import sys
import subprocess
import os

def usage():
    if len(sys.argv) < 3:
       print "Atleast 3 arguments should be passed"
       raise ("Insufficient number of arguments")
       exit(1)

def create_img(cmd):
   try: 
        proc = subprocess.Popen([cmd], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        output, error = proc.communicate()
        if output:
           pass
        if error:
           raise Exception("Image creation failed")
   except Exception as e:
       print ("Caught Exception")
       raise e

def create_containers(image, containername):
   try:
      command = "docker run -d -P --name " + containername + " " + image
      proc = subprocess.Popen([command], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
      proc.wait()
      stdout, stderr = proc.communicate() 
   except Exception as e:
      print ("Caught Exception in create_container")
      raise e

def destroy_existing_containers(container):
    try: 
       print container
       command = "docker rm -f " + container 
       proc = subprocess.Popen([command], shell=True,  stdout=subprocess.PIPE, stderr=subprocess.PIPE)
       proc.wait()
       stdout, stderr = proc.communicate()

   except Exception as e:
      print ("Caught Exception in create_container")
      raise e

def get_port(container):
   try: 
      command = "docker port" + " " + container
      proc = subprocess.Popen([cmd], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
      stdout, stderr = proc.communicate()
      print stdout.rsplit(':',2)[1]
      
    

def check_containers_existence(cmd, image):
   try:
      container = image + "_container2"
      proc = subprocess.Popen([cmd], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
      fd = open("output.txt", "w")
      for line in proc.stdout.readlines():
         print line
         fd.write(line)
      fd.close()

      size_of_file = os.path.getsize("/home/pp186048/ansible-docker/output.txt")
      print size_of_file

      if size_of_file > 0: 
         print "Call destroy containers"
         destroy_existing_containers(container)
         print "call craete container after destory"
         create_containers(image, container)
      else:
         print "Call create containers"
         create_containers(image, container)
         
   except Exception as e:
       print ("Caught Exception from check_containers_existence")
       raise e

def check_images():
   try:
       proc = subprocess.Popen(["docker", "images"] , stdout=subprocess.PIPE)
       f = open( "tmp", 'w')
       for line in proc.stdout.readlines():
          f.write(line)
       f.close()

       with open('tmp') as myfile:
          if "pp186048_ubuntu_sshd" in myfile.read():
             print "Coming here in ubuntu"
             command = 'docker ps -a | grep pp186048_ubuntu_sshd'
             image = "pp186048_ubuntu_sshd"
             check_containers_existence(command, image)
             pass
          else:
             command = 'docker build -t pp186048_ubuntu_sshd /home/pp186048/ansible-docker/docker_ubuntu'
             create_img(command) 
       myfile.close()
        
       with open('tmp') as myfile: 
          if "pp186048_centos_sshd" in myfile.read():
             command = 'docker ps -a | grep pp186048_centos_sshd'
             image = "pp186048_centos_sshd"
             check_containers_existence(command, image)
             pass
          else:
             command = 'docker build -t pp186048_centos_sshd /home/pp186048/ansible-docker/docker_centos'
             create_img(command)
       myfile.close()
          
   except Exception as e:
       print "Caught execption while checking existence of images"
       raise e
     

#def run_containers():
#p = Popen("docker run -i -t --name="%s" dockerfile/python /bin/bash", stdin=PIPE)
#p.communicate("timeout 0.5 python | head -n 500000 \n" % run_this)
#    proc = subprocess.Popen 
    
    

### MAIN####  
print "This script is used to create docker containers from the existing images"
usage()
check_images()
#run_containers()






