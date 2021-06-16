Demo sample, with light container
docker build -t gwcloud/claimcenter:version10.03 .
docker image tag gwcloud/claimcenter:version10.03 gwcloud/claimcenter

##volume
docker run -d -p 8080:8080 -e TZ=America/Mexico_City -e JAVA_OPTS="-Dgw.cc.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.server.mode=dev -Dgw.passthrough.gw.config.external.property.file=/tmp/suite/cc/conf/external_gw.properties -Dgw.cc.env=ootb -Dgw.passthrough.gw.loadsample.enable=true" -v c:\tmp:/tmp --restart unless-stopped --name gw-cc-ootb gwcloud/claimcenter


docker build -t arribajim/tomcat9:gw-cc_v1 .
linux
-v $PWD/tmp/external_gw.properties:/usr/local/tomcat/config #´pegar properties
windows
-v //c/home/github_jim/gw/weblogic/domain.properties:/u01/oracle/properties/domain.properties

si se mandan por volument montado
-e JAVA_OPTS="-Dgw.cc.env=docker -Dgw.passthrough.gw.config.external.property.file=/tmp/external_gw.properties"
la imagen los tiene en este path
-e JAVA_OPTS="-Dgw.cc.env=docker -Dgw.passthrough.gw.config.external.property.file=/usr/local/tomcat/config/external_gw.properties"

//local command
docker run -d -p 8080:8080 -e JAVA_OPTS="-Dgw.server.mode=test" --name gw-cc-local arribajim/tomcat9:gw-cc_v1

//docker env con properties precargadas change Dgw.server.mode dev|test|prod
docker run -d -p 9080:8080 -e JAVA_OPTS="-Dgw.server.mode=dev -Dgw.cc.env=docker -Dgw.passthrough.gw.config.external.property.file=/usr/local/tomcat/conf/external_gw.properties"  --name gw-cc-docker arribajim/tomcat9:gw-cc_v1

//con propiedades en volumen 
docker run -d -p 9080:8080 -e JAVA_OPTS="-Dgw.server.mode=test -Dgw.cc.env=docker -Dgw.passthrough.gw.config.external.property.file=/tmp/external_gw.properties"  --name gw-cc-docker arribajim/tomcat9:gw-cc_v1


dev mode
docker run -d -p 8080:8080 -e JAVA_OPTS="-Dgw.cc.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.server.mode=dev" --name gw-cc-local arribajim/tomcat9:gw-cc_v1

for docker-compose or kubernetes
http://localhost:8280/ab/ping