# FROM amazoncorretto:21-al2023
FROM ubuntu
# RUN yum install -y procps-ng shadow-utils which util-linux
RUN apt-get update -y
RUN apt-get install openjdk-17-jdk wget -y

ENV NXF_HOME=/.nextflow
ARG TARGETPLATFORM=linux/amd64

# copy docker client
COPY dist/${TARGETPLATFORM}/docker /usr/local/bin/docker
COPY entry.sh /usr/local/bin/entry.sh
COPY nextflow /usr/local/bin/nextflow



# download runtime
RUN mkdir /.nextflow \
 && chmod 755 /usr/local/bin/nextflow \
 && chmod 755 /usr/local/bin/entry.sh \
 && nextflow info

RUN mkdir -p /.nextflow/plugins
COPY nf-hello-0.7.0 /.nextflow/plugins/nf-hello-0.7.0
# define the entry point
ENTRYPOINT ["/usr/local/bin/entry.sh"]
