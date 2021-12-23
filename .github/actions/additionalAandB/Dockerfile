FROM ubuntu:20.04

ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=ja_JP.UTF-8 \
    LC_ALL=${LANG} \
    LANGUAGE=${LANG} \
    TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

# Install packages
RUN apt-get update && \
    apt-get install -y debian-keyring debian-archive-keyring

# Install utilities(optional).
RUN apt-get install -y \
      jq \
      git

# Install apt-utils
RUN apt-get install -y apt-utils \
    # Clean up
    && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

# アクションのリポジトリからコードファイルをコンテナのファイルシステムパス `/`にコピー
COPY entrypoint.sh /entrypoint.sh

# dockerコンテナが起動する際に実行されるコードファイル (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
