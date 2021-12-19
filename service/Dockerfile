FROM bitnami/kubectl:1.20.13 as kubectl
FROM google/cloud-sdk:365.0.0

# install bash, git
RUN apt-get update && apt-get install -y \
  vim

# install kubectl
COPY --from=kubectl /opt/bitnami/kubectl/bin/kubectl /usr/local/bin/

COPY /scripts /scripts

WORKDIR /scripts

ENTRYPOINT ["/scripts/init.sh"]
CMD ["version"]