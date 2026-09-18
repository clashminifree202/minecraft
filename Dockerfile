FROM eclipse-temurin:17-jre

WORKDIR /relay

RUN curl -fL --retry 5 -o sp-relay.jar \
    "https://raw.githubusercontent.com/lax1dude/eaglercraftx-sp-relay/main/stable-download/sp-relay.jar" \
 || curl -fL --retry 5 -o sp-relay.jar \
    "https://mirror.webmc.xyz/-sp-relay/jar/stable-download/sp-relay.jar" \
 || echo "JAR_DOWNLOAD_FAILED" > /relay/JAR_FAILED.txt

CMD ["java","-jar","sp-relay.jar"]
