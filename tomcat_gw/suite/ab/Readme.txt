Demo sample, with light container
linux
-v $PWD/tmp/external_gw.properties:/usr/local/tomcat/config #´pegar properties
windows
-v //c/home/github_jim/gw/weblogic/domain.properties:/u01/oracle/properties/domain.properties

si se mandan por volument montado
-e JAVA_OPTS="-Dgw.ab.env=docker -Dgw.passthrough.gw.config.external.property.file=/tmp/external_gw.properties"
la imagen los tiene en este path
-e JAVA_OPTS="-Dgw.ab.env=docker -Dgw.passthrough.gw.config.external.property.file=/usr/local/tomcat/config/external_gw.properties"

//local command
docker run -d -p 8280:8080 -e JAVA_OPTS="-Dgw.server.mode=test" --name gw-ab-local arribajim/tomcat9:gw-ab_v1

//docker env con properties precargadas

docker run -d -p 9280:8080 -e JAVA_OPTS="-Dgw.server.mode=test -Dgw.ab.env=docker -Dgw.passthrough.gw.config.external.property.file=/usr/local/tomcat/conf/external_gw.properties"  --name gw-ab-docker arribajim/tomcat9:gw-ab_v1

//con propiedades en volumen 
docker run -d -p 9280:8080 -e JAVA_OPTS="-Dgw.server.mode=test -Dgw.ab.env=docker -Dgw.passthrough.gw.config.external.property.file=/tmp/external_gw.properties"  --name gw-ab-docker arribajim/tomcat9:gw-ab_v1