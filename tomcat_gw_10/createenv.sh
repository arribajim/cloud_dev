#!/bin/bash
rm setenv.sh
servermode=#batch,workqueue,scheduler,messaging,startable,ui
#servermode=#workqueue
ccenv=pod
echo export CATALINA_OPTS=\"\$CATALINA_OPTS -Xms1024m -Xmx1024m -Djava.net.preferIPv4Stack=true\" >> setenv.sh
#export JAVA_OPTS=\"\$JAVA_OPTS -Dgw.cc.serverid=`uuidgen`${servermode} -Dgw.cc.env=${ccenv}\" >> setenv.sh
echo export JAVA_OPTS=\"\$JAVA_OPTS -Dgw.cc.env=${ccenv}\" >> setenv.sh
chmod +x setenv.sh
