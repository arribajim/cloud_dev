docker build -t gwcloud/policycenter:version10.00 .
docker build -t gwcloud/policycenter:version10.M .

#Run local-ootb without passing from external source the properties
docker run -d -p 8180:8080 -e JAVA_OPTS="-Dgw.pc.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.server.mode=dev -Dgw.passthrough.gw.config.external.property.file=/usr/local/tomcat/conf/external_gw.properties -Dgw.pc.env=ootb -Dgw.passthrough.gw.loadsample.enable=true" --name gw-pc-ootb gwcloud/policycenter:version10.M




Demo sample, with light container
docker build -t arribajim/tomcat9:gw-pc_v1 .
linux
-v $PWD/tmp/external_gw.properties:/usr/local/tomcat/config #´pegar properties
windows
-v //c/home/github_jim/gw/weblogic/domain.properties:/u01/oracle/properties/domain.properties

si se mandan por volument montado
-e JAVA_OPTS="-Dgw.pc.env=docker -Dgw.passthrough.gw.config.external.property.file=/tmp/external_gw.properties"
la imagen los tiene en este path
-e JAVA_OPTS="-Dgw.pc.env=docker -Dgw.passthrough.gw.config.external.property.file=/usr/local/tomcat/config/external_gw.properties"

//local command
docker run -d -p 8180:8080 -e JAVA_OPTS="-Dgw.server.mode=test" --name gw-pc-local arribajim/tomcat9:gw-pc_v1

//docker env con properties precargadas

docker run -d -p 9180:8080 -e JAVA_OPTS="-Dgw.server.mode=dev -Dgw.pc.env=docker -Dgw.passthrough.gw.config.external.property.file=/usr/local/tomcat/conf/external_gw.properties"  --name gw-pc-docker arribajim/tomcat9:gw-pc_v1

//con propiedades en volumen 
docker run -d -p 9180:8080 -e JAVA_OPTS="-Dgw.server.mode=dev -Dgw.pc.env=docker -Dgw.passthrough.gw.config.external.property.file=/tmp/external_gw.properties"  --name gw-pc-docker arribajim/tomcat9:gw-pc_v1


dev mode
docker run -d -p 8180:8080 -e JAVA_OPTS="-Dgw.pc.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.server.mode=dev" --name gw-pc-local arribajim/tomcat9:gw-pc_v1


docker push arribajim/tomcat9:gw-pc_v1