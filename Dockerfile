FROM centos:7
RUN yum -y update && \
    yum -y install python-setuptools && \
    yum -y install python-devel && \
    yum -y install gcc && \
    yum -y install rpm-build && \
    yum clean all
RUN easy_install pip

EXPOSE 5000

RUN mkdir /opt/flaskapp
ADD . /opt/flaskapp/testapp
RUN pip install -r /opt/flaskapp/testapp/requirements.txt
RUN mkdir /var/log/flaskapp/


CMD ["python", "/opt/flaskapp/testapp/routes.py"]
