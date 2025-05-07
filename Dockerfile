FROM alpine

# https://docs.gaganode.com/sdk/pc-sdk.html
ARG SDK_PATH=/0.0.600/gaganode_pro-0_0_600.tar.gz
ENV GAGA_TOKEN=oofacuxhtuwrymtd33b7d44b4e30e800

RUN set -eux; \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories; \
    apk add --no-cache curl; \
    arch=$(uname -m); \
    case $arch in \
        arm64 | armv8 | aarch64) \
            pkg_id=68;; \
        armv7 | armhf | arm) \
            pkg_id=67;; \
        *) \
            pkg_id=66;; \
    esac; \
    curl -o sdk.tgz -L https://assets.coreservice.io/public/package/$pkg_id/gaganode_pro$SDK_PATH; \
    tar zxvof sdk.tgz; \
    mkdir -p /app; \
    mv -f gaganode-linux-*/* /app; \
    rm -rf *.tgz gaganode-*; \
    cd /app; \
    chmod a+x gaganode; \
    pwd
WORKDIR /app
CMD ["/bin/sh", "-c", "./gaganode config set --token $GAGA_TOKEN && ./gaganode"]