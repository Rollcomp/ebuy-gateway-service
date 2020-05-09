FROM openjdk:8-alpine

ARG DIR=/opt/ebuy/gateway-service

ENV DIR $DIR

WORKDIR $DIR

COPY target/*.jar $DIR/

ENTRYPOINT java  $JAVA_OPTS $DEBUG -cp ebuy-gateway-service-0.0.1-SNAPSHOT.jar org.ebuy.GatewayServiceApplication


