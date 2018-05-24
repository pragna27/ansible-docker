FROM ubuntu:16.04 as ub_img
RUN apt-get update && apt-get install -y openssh-server
RUN apt-get install -y lib32stdc++6
RUN apt-get install -y libsasl2-dev ksh
RUN apt-get install -y perl build-essential curl 

WORKDIR /bin
RUN curl -L https://cpanmin.us/ -o cpanm
RUN chmod +x cpanm

RUN cpanm Spreadsheet::Read
RUN cpanm Spreadsheet::ParseExcel
RUN cpanm install Switch
 
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
# Change PermitRootLogin prohibit-password to PermitRootLogin yes in /etc/ssh/sshd_config
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
RUN apt-get install -y python
RUN apt-get install -y vim

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]


