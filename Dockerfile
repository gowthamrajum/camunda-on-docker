FROM camunda/camunda-bpm-platform:run-latest

# Unzip, patch, and repackage engine-rest.war
RUN mkdir /tmp/engine-rest \
 && unzip /camunda/webapps/engine-rest.war -d /tmp/engine-rest \
 && rm /camunda/webapps/engine-rest.war

COPY web.xml /tmp/engine-rest/WEB-INF/web.xml

RUN cd /tmp/engine-rest && \
    jar -cf /camunda/webapps/engine-rest.war . && \
    rm -rf /tmp/engine-rest
