FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update                                                                                                 \
 && apt-get install -y                                                                                             \
      autoconf                                                                                                     \
      build-essential                                                                                              \
      curl                                                                                                         \
      wget                                                                                                         \
      git-core                                                                                                     \
      lib32z1-dev                                                                                                  \
      make                                                                                                         \
      ncurses-dev                                                                                                  \
      unzip                                                                                                        \
 && apt-get clean

COPY compile.sh /build/
WORKDIR /build

ENTRYPOINT /build/compile.sh

