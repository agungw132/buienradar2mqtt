FROM ubuntu

MAINTAINER Agung Wahyudi <agung.wahyudi@gmail.com>

RUN apt-get update && apt-get install -yq mosquitto-clients wget

COPY . /root/

ARG MQTT_HOST
ARG MQTT_USER
ARG MQTT_PASSWORD
ARG MQTT_PORT
ARG MQTT_TOPIC
ARG DELAY

ENTRYPOINT /root/getData.sh $MQTT_HOST $MQTT_PORT $MQTT_USER $MQTT_PASSWORD $MQTT_TOPIC $DELAY
