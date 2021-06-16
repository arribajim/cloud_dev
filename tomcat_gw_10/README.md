wget --http-user=mail@mail.com --http-password=password  "https://www.oracle.com/webapps/redirect/signon?nexturl=https://download.oracle.com/otn/linux/oracle19c/190000/LINUX.X64_193000_db_home.zip&userid=arribajim@hotmail.com&email=mail@mail.com&patch_password=password&patch_file=LINUX.X64_193000_db_home.zip" -O LINUX.X64_193000_db_home.zip --no-check-certificate


https://www.oracle.com/webapps/redirect/signon?nexturl=https://download.oracle.com/otn/linux/oracle19c/190000/LINUX.X64_193000_db_home.zip


wget --load-cookies=./oracle.com_cookies.txt --no-check-certificate "https://www.oracle.com/webapps/redirect/signon?nexturl=https://download.oracle.com/otn/linux/oracle19c/190000/LINUX.X64_193000_db_home.zip" -O LINUX.X64_193000_db_home.zip
/home/arribajim/oracle

docker  run --name oracle19c --network host -p 1521:1521 -p 5500:5500 -v /home/arribajim/oracle:/u01/oracle oracle/database:19.3.0-ee

ORCLPDB1
ez49RVW/y08=1

#sqlserver
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=ez49RVW/y08=1' -e 'MSSQL_PID=Standard' -p 1433:1433 -d mcr.microsoft.com/mssql/server:latest

#volume
docker run -d -p 8280:8080 -e TZ=America/Mexico_City -e JAVA_OPTS="-Dgw.ab.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.server.mode=dev -Dgw.passthrough.gw.config.external.property.file=/tmp/suite/ab/conf/external_gw.properties -Dgw.ab.env=ootb -Dgw.passthrough.gw.loadsample.enable=true" -v c:\tmp:/tmp --restart unless-stopped --name gw-ab-ootb gwcloud/contactmanager
docker logs -f gw-ab-ootb
docker run -d -p 8580:8080 -e TZ=America/Mexico_City -e JAVA_OPTS="-Dgw.bc.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.server.mode=dev -Dgw.passthrough.gw.config.external.property.file=/tmp/suite/bc/conf/external_gw.properties -Dgw.bc.env=ootb -Dgw.passthrough.gw.loadsample.enable=true" --restart unless-stopped -v c:\tmp:/tmp --name gw-bc-ootb gwcloud/billingcenter
docker logs -f gw-bc-ootb
docker run -d -p 8080:8080 -e TZ=America/Mexico_City -e JAVA_OPTS="-Dgw.cc.serverid=#batch,workqueue,scheduler,messaging,startable,ui -Dgw.server.mode=dev -Dgw.passthrough.gw.config.external.property.file=/tmp/suite/cc/conf/external_gw.properties -Dgw.cc.env=ootb -Dgw.passthrough.gw.loadsample.enable=true" -v c:\tmp:/tmp --restart unless-stopped --name gw-cc-ootb gwcloud/claimcenter
docker logs -f gw-cc-ootb
