FROM alpine:3.12 AS build

RUN apk add --no-cache gcc linux-headers libc-dev make git


WORKDIR /tmp
RUN git clone https://github.com/RedisLabs/redis-cluster-proxy.git
RUN cd /tmp/redis-cluster-proxy && make && make install
RUN rm -Rf /tmp/redis-cluster-proxy

FROM alpine:3.1

COPY --from=build /usr/local/bin/redis-cluster-proxy /usr/local/bin/redis-cluster-proxy
