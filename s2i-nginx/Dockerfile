# s2i-nginx
FROM registry.access.redhat.com/ubi8/ubi:8.0

# Generic labels 
LABEL Component="nginx" \
      Name="s2i-nginx" \
      Version="1.0" \
      Release="1"

# Labels consumed by OpenShift 
LABEL io.k8s.description="A basic Nginx S2I builder image" \
      io.k8s.display-name="Nginx S2I builder image" \
      io.openshift.expose-services="8080:http" \
      io.openshift.s2i.scripts-url="image:///usr/libexec/s2i"

# This label is used to categorize this image as a builder image in the
# OpenShift web console.
LABEL io.openshift.tags="builder, nginx"

ENV APP_ROOT="/usr/share/nginx/html"

RUN   yum install -y --nodocs --disableplugin=subscription-manager nginx && \
      yum clean all -y --disableplugin=subscription-manager

# Copy the S2I scripts to /usr/libexec/s2i
COPY ./s2i/bin/ /usr/libexec/s2i

# Drop the root user and make the content of /opt/app-root owned by user 1001
RUN  mkdir -p ${APP_ROOT} && \ 
     chown -R 1001:1001 ${APP_ROOT} && \
     chgrp -R 0 ${APP_ROOT} && \
     chmod -R g=u ${APP_ROOT} && \
     chmod +x /usr/libexec/s2i/assemble /usr/libexec/s2i/run /usr/libexec/s2i/usage


# This default user is created in the openshift/base-centos7 image
USER 1001

# Set the default port for applications built using this image
EXPOSE 8080

# Set the default CMD for the image
CMD ["/usr/libexec/s2i/usage"]