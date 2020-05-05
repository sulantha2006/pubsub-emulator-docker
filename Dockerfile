ARG GCLOUD_SDK_VERSION=alpine

# Use google cloud sdk
FROM google/cloud-sdk:$GCLOUD_SDK_VERSION
MAINTAINER sulantha.s@gmail.com

EXPOSE $PORT

VOLUME /data

ENTRYPOINT ["gcloud", "beta", "emulators", "pubsub"]
CMD ["start", "--project=$PUBSUB_PROJECT_ID", "--host-port=0.0.0.0:$PORT", "--data-dir=/data"]
