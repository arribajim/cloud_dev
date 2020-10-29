Demo sample, with light container
docker build -t arribajim/tomcat9:gw-bc_v1 .

linux
-v $PWD/tmp/external_gw.properties:/usr/local/tomcat/config #´pegar properties
windows
-v //c/home/github_jim/gw/weblogic/domain.properties:/u01/oracle/properties/domain.properties

si se mandan por volument montado
-e JAVA_OPTS="-Dgw.ab.env=docker -Dgw.passthrough.gw.config.external.property.file=/tmp/external_gw.properties"
la imagen los tiene en este path
-e JAVA_OPTS="-Dgw.ab.env=docker -Dgw.passthrough.gw.config.external.property.file=/usr/local/tomcat/config/external_gw.properties"

//local command
docker run -d -p 8580:8080 -e JAVA_OPTS="-Dgw.server.mode=test" --name gw-bc-local arribajim/tomcat9:gw-bc_v1

//docker env con properties precargadas

docker run -d -p 9580:8080 -e JAVA_OPTS="-Dgw.server.mode=dev -Dgw.bc.env=docker -Dgw.passthrough.gw.config.external.property.file=/usr/local/tomcat/conf/external_gw.properties"  --name gw-bc-docker arribajim/tomcat9:gw-bc_v1

//con propiedades en volumen 
docker run -d -p 9580:8080 -e JAVA_OPTS="-Dgw.server.mode=test -Dgw.bc.env=docker -Dgw.passthrough.gw.config.external.property.file=/tmp/external_gw.properties"  --name gw-bc-docker arribajim/tomcat9:gw-bc_v1

dev mode
docker run -d -p 8580:8080 -e JAVA_OPTS="-Dgw.bc.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.server.mode=dev" --name gw-bc-local arribajim/tomcat9:gw-bc_v1

docker push arribajim/tomcat9:gw-bc_v1

docker env ootb, h2db
docker run -d -p 8580:8080 -e JAVA_OPTS="-Dgw.server.mode=dev -Dgw.bc.env=ootb -Dgw.passthrough.gw.config.external.property.file=/usr/local/tomcat/conf/external_gw.properties"  --name gw-bc-ootb arribajim/tomcat9:gw-bc_v1
