FROM openjdk:11-jdk-slim
ENV GUIDEWIRE_HOME /opt
ENV PATH $GUIDEWIRE_HOME:$PATH
RUN mkdir -p "$GUIDEWIRE_HOME"
WORKDIR $GUIDEWIRE_HOME
COPY ["ContactManager.zip", "."]
RUN set -eux; \
	\	
	apt-get update; \
	apt-get install -y --no-install-recommends \
		unzip \		
	; \
	unzip ContactManager.zip; \
	rm ContactManager.zip	
CMD ["gwb", "warTomcatDbcp"]
