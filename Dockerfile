FROM alpine:3.10.2

WORKDIR /app
COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json

RUN apk add --update --no-cache nodejs npm openjdk8-jre
RUN npm install 

ENTRYPOINT [ "/usr/bin/java", "-jar", "node_modules/google-closure-compiler-java/compiler.jar" ]
