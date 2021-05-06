FROM registry.access.redhat.com/ubi8/ubi:8.0

ENV PYTHON_VERSION=3.6 \
    PATH=$HOME/.local/bin/:$PATH

LABEL io.openshift.tags="python,clock"
LABEL io.k8s.description="Clock done in Python"


RUN yum -y update
RUN yum -y install python36
RUN yum -y clean all --enablerepo='*'

COPY clock.py /app/clock.py

RUN chgrp -R 0 /app
RUN chmod -R g=u /app

USER 1001

CMD python3 /app/clock.py
