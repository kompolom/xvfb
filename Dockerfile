FROM node:14.15.0-slim
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests --yes --quiet \
    ca-certificates \
    gosu \
    git \
    bzip2 \
    libgtk2.0-0 \
    libgconf-2-4 \
    libasound2 \
    libxtst6 \
    libxss1 \
    libnss3 \
    xvfb && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY docker-entrypoint.sh /usr/local/bin/
CMD [ "bash" ]
