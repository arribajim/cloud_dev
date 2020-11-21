#fix opts for all suite
export CATALINA_OPTS="$CATALINA_OPTS -Xms1024m -Xmx1024m -Djava.net.preferIPv4Stack=true"
export JAVA_OPTS="$JAVA_OPTS -Dgw.cc.env=docker -Dgw.passthrough.gw.config.external.property.file=/tmp/external_config.properties"