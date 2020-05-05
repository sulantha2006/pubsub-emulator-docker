ARG GCLOUD_SDK_VERSION=alpine

# Use google cloud sdk
FROM google/cloud-sdk:$GCLOUD_SDK_VERSION
MAINTAINER sulantha.s@gmail.com

EXPOSE 8300

VOLUME /data

ENTRYPOINT ["gcloud", "beta", "emulators", "pubsub"]
CMD ["start", "--host-port=127.0.0.1:8300", "--data-dir=/data"]
