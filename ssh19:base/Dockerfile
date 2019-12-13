# Version: 0.0.1
# @edt M06 2019-2020
# ssh
# -------------------------------------
FROM fedora:27
LABEL author="@edt ASIX M06-ASO"
LABEL description="SSH server 2019-2020"
RUN dnf -y install procps passwd vim iproute nmap authconfig nss-pam-ldapd openssh-server openssh-clients net-tools
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]

