ARG GCLOUD_SDK_VERSION=alpine

# Use google cloud sdk
FROM google/cloud-sdk:$GCLOUD_SDK_VERSION
MAINTAINER sulantha.s@gmail.com

RUN apk --update add openjdk8-jre
RUN gcloud components install pubsub-emulator beta --quiet

VOLUME /opt/data

COPY start-pubsub .

EXPOSE 8300

ENTRYPOINT ["./start-pubsub"]
