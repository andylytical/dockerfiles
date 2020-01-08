FROM centos:7
# Copied from https://hub.docker.com/_/centos
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]
# Replace cmd with entrypoint
CMD [ "/usr/sbin/init" ]
#ENTRYPOINT [ "/usr/sbin/init" ]
STOPSIGNAL SIGRTMIN+3

# Begin custom stuff
ARG TIMEZONE
ENV TIMEZONE=${TIMEZONE}
RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime \
    && echo $TIMEZONE > /etc/timezone

RUN yum install -y vim curl git \
	&& yum clean all
