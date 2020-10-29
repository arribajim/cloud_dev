Demo sample, with light container

docker build -t arribajim/tomcat9:gw-ab_v1 .

linux
-v $PWD/tmp/external_gw.properties:/usr/local/tomcat/config #´pegar properties
-v $PWD/external_gw.properties:/tmp
windows
-v //c/home/github_jim/gw/weblogic/domain.properties:/u01/oracle/properties/domain.properties

si se mandan por volument montado
-e JAVA_OPTS="-Dgw.ab.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.ab.env=docker -Dgw.passthrough.gw.config.external.property.file=/tmp/external_gw.properties"
la imagen los tiene en este path
-e JAVA_OPTS="-Dgw.ab.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.ab.env=docker -Dgw.passthrough.gw.config.external.property.file=/usr/local/tomcat/config/external_gw.properties"

//local command
docker run -d -p 8280:8080 -e JAVA_OPTS="-Dgw.ab.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.server.mode=test" --name gw-ab-local arribajim/tomcat9:gw-ab_v1

//docker env con properties precargadas
docker run -d -p 9280:8080 -e JAVA_OPTS="-Dgw.ab.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.server.mode=test -Dgw.ab.env=docker -Dgw.passthrough.gw.config.external.property.file=/usr/local/tomcat/conf/external_gw.properties"  --name gw-ab-docker arribajim/tomcat9:gw-ab_v1

//con propiedades en volumen 
docker run -d -p 9280:8080 -e JAVA_OPTS="-Dgw.ab.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.server.mode=test -Dgw.ab.env=docker -Dgw.passthrough.gw.config.external.property.file=/tmp/external_gw.properties"  --name gw-ab-docker -v $PWD/external_gw.properties:/tmp arribajim/tomcat9:gw-ab_v1


dev mode
docker run -d -p 8280:8080 -e JAVA_OPTS="-Dgw.ab.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.server.mode=dev" --name gw-ab-local arribajim/tomcat9:gw-ab_v1

for docker-compose or kubernetes
http://localhost:8280/ab/ping


hub.docker.com
up container
docker push arribajim/tomcat9:gw-ab_v1

down container
docker pull arribajim/tomcat9:gw-ab_v1



DOCKER WITH OOTB ENV LOAD PROPERTIES DEFAULT
//docker env con properties precargadas
docker run -d -p 8280:8080 -e JAVA_OPTS="-Dgw.ab.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.server.mode=test -Dgw.ab.env=ootb -Dgw.passthrough.gw.config.external.property.file=/usr/local/tomcat/conf/external_gw.properties"  --name gw-ab-ootb arribajim/tomcat9:gw-ab_v1
