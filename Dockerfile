FROM centos:7

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install python-pip
RUN yum clean all 

EXPOSE 5000

RUN mkdir /opt/flaskapp
ADD . /opt/flaskapp/testapp
RUN pip install -r /opt/flaskapp/testapp/requirements.txt
RUN mkdir /var/log/flaskapp/

CMD ["python", "/opt/flaskapp/testapp/routes.py"]
