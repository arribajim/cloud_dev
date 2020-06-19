FROM arribajim/tomcat9:9.0.35-jdk11-Guidewire10
LABEL guidewire.product=ab
RUN apt-get update && apt-get install -y
COPY ab.war ./webapps/
COPY external_config.properties /tmp
VOLUME ["/tmp"]
EXPOSE 8280
CMD ["catalina.sh", "run"]