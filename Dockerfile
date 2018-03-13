FROM openjdk:8u151-jdk-alpine3.7

MAINTAINER Rustam Zhumagambetov "rustam.zhumagambetov@nu.edu.kz"

RUN apk --update add --virtual build-dependencies gcc make patch m4 libc-dev opam && \
 opam init -a && \
 opam install coq=8.6.1 -y && \
 apk del build-dependencies && \
 rm -rf /root/.opam/system/build/ && \
 rm -rf /root/.opam/repo/ && \
 rm -rf /root/.opam/archives

ENV PATH /root/.opam/system/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
