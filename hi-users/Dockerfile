FROM registry.redhat.io/rhel8/python-38

ARG version

ENV VERSION_APPLICATION $version

USER root 

LABEL io.openshift.tags="python,welcome,users" \
      io.k8s.description="Say Hi From Python Application"

COPY hiUsers.py /app/hiUsers.py

RUN chgrp -R 0 /app
RUN chmod -R g=u /app

USER 1001

CMD python3 /app/hiUsers.py
