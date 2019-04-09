FROM java:8
VOLUME /tmp
ADD target/hello.jar hello.jar
RUN bash -c 'touch /hello.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /hello.jar"]