FROM camunda/camunda-bpm-platform:run-latest

# Overwrite the default web.xml
COPY config/web.xml /camunda/webapps/engine-rest/WEB-INF/web.xml
