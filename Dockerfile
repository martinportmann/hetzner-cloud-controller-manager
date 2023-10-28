FROM bitnami/minideb:latest
RUN apt-get update
RUN apt-get install -y ca-certificates bash
COPY hetzner-cloud-controller-manager /bin/hetzner-cloud-controller-manager
LABEL org.opencontainers.image.source https://github.com/syself/hetzner-cloud-controller-manager
ENTRYPOINT ["/bin/hetzner-cloud-controller-manager"]
