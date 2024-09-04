FROM mysticvideo/devtoolset-6-toolchain-centos6

RUN rm -rf /etc/yum.repos.d && \
  mkdir -p /etc/yum.repos.d && \
  curl https://www.getpagespeed.com/files/centos6-eol.repo --output /etc/yum.repos.d/CentOS-Base.repo && \
  yum -y install wget gcc openssl-devel bzip2-devel libffi-devel xz-devel tk-devel 
WORKDIR /tmp

ARG PYTHON_VERS

RUN curl -O https://www.python.org/ftp/python/${PYTHON_VERS}/Python-${PYTHON_VERS}.tgz && \
    tar xzf Python-${PYTHON_VERS}.tgz
WORKDIR /tmp/Python-${PYTHON_VERS}
RUN ./configure --prefix=/opt/python/ --enable-shared

COPY build.sh build.sh 
CMD ["./build.sh"]
