FROM debian:bullseye-slim as runtime
WORKDIR mhddos_proxy
ADD https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux ./
RUN chmod +x mhddos_proxy_linux
ENTRYPOINT ["./mhddos_proxy_linux"]
