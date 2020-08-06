FROM  alpine:3.12
LABEL maintainer="wangkexiong"

ARG AMC_VERSION=4.0.27

RUN wget -O amc.tar.gz https://github.com/aerospike-community/amc/releases/download/${AMC_VERSION}/aerospike-amc-enterprise-${AMC_VERSION}-linux.tar.gz && \
    tar xvzf amc.tar.gz && \
    rm -rf amc.tar.gz

EXPOSE 8081

ENTRYPOINT [ "/opt/amc/amc" ]
CMD [ "-config-file=/etc/amc/amc.conf" ]
