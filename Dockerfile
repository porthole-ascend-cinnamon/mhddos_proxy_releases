FROM --platform=$TARGETPLATFORM debian:bullseye-slim as runtime
ARG TARGETPLATFORM
WORKDIR mhddos_proxy
RUN if [ "$TARGETPLATFORM" = "linux/arm64" ]; \
    then FILENAME=mhddos_proxy_linux_arm64; \
    else FILENAME=mhddos_proxy_linux; fi \
  && apt-get update && apt-get install curl -y \
  && curl -Lo mhddos_proxy_linux https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/$FILENAME \
  && apt-get remove -y curl \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/*
RUN chmod +x mhddos_proxy_linux
ENTRYPOINT ["./mhddos_proxy_linux"]
