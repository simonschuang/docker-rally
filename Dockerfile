FROM centos:7 

RUN yum install -y https://repos.fedorapeople.org/repos/openstack/openstack-newton/rdo-release-newton-4.noarch.rpm

RUN yum update -y

RUN yum -y install \
        openstack-rally \
        gcc \
        libffi-devel \
        python-devel \
        openssl-devel \
        gmp-devel \
        libxml2-devel \
        libxslt-devel \
        postgresql-devel \
        redhat-rpm-config \
        wget \
        openstack-selinux \
        openstack-utils && \ 
        yum clean all

ADD deploy.json /deploy.json

RUN rally-manage --config-file /etc/rally/rally.conf db recreate
