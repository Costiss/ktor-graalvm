FROM ghcr.io/graalvm/jdk-community:21

WORKDIR /app

COPY build/distributions/example.cloudrun-coldstart-0.0.1.tar /app

RUN tar xf example.cloudrun-coldstart-0.0.1.tar

WORKDIR /app/example.cloudrun-coldstart-0.0.1

RUN microdnf install findutils

RUN chmod +x bin/example.cloudrun-coldstart

EXPOSE 8080

CMD ["bin/example.cloudrun-coldstart"]
