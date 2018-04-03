FROM centos:7
RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install python-setuptools && \
    yum -y --setopt=tsflags=nodocs install python-devel && \
    yum -y --setopt=tsflags=nodocs install gcc && \
    yum -y --setopt=tsflags=nodocs install rpm-build && \
    yum clean all
RUN easy_install pip

EXPOSE 5000

RUN mkdir /opt/flaskapp
ADD . /opt/flaskapp/testapp
RUN pip install -r /opt/flaskapp/testapp/requirements.txt
RUN mkdir /var/log/flaskapp/


CMD ["python", "/opt/flaskapp/testapp/routes.py"]
