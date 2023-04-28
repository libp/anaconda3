FROM centos:centos7
RUN yum install bzip2 -y
COPY Anaconda3-5.3.1-Linux-x86_64.sh /root/
RUN sh /root/Anaconda3-5.3.1-Linux-x86_64.sh -b -p /opt/conda; \
    rm /root/Anaconda3-5.3.1-Linux-x86_64.sh; \
    yum clean all; \
    /opt/conda/bin/conda clean -a -y

RUn /opt/conda/bin/conda create --name py38 python=3.8 -y

WORKDIR /opt/conda/
ENV PATH /opt/conda/bin:$PATH

CMD tail -f /dev/null

