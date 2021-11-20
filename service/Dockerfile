FROM google/cloud-sdk:365.0.0

COPY /scripts /scripts

WORKDIR /scripts

ENTRYPOINT ["/scripts/init.sh"]
CMD ["version"]