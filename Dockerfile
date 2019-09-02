FROM openjdk:8u212-jdk-alpine3.9
RUN /bin/sh -c "apk add --no-cache bash curl unzip"
RUN curl -O https://download.jboss.org/wildfly/12.0.0.Final/wildfly-12.0.0.Final.zip \
&& unzip -qq wildfly-12.0.0.Final.zip -d /opt/jboss \
&& mv /opt/jboss/wildfly-12.0.0.Final /opt/jboss/wildfly/ \
&& chmod -R g+rw /opt/jboss/wildfly