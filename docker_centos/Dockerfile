FROM centos:7
RUN yum update -y && \
         yum clean all

RUN yum install -y \
    libunwind \
    libicu

# Setup Container for SSH
WORKDIR /
RUN yum install -y \
    unzip \
    openssh-server \
    curl

RUN mkdir -p /var/run/sshd
RUN echo 'root:password' | chpasswd

RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

RUN /usr/bin/ssh-keygen -A 

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
