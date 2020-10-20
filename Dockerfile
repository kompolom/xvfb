FROM node:13.13.0-slim
RUN apt update && apt install --no-install-recommends --no-install-suggests --yes --quiet \
    gosu \
    git \
    bzip2 \
    libgtk2.0-0 \
    libgconf-2-4 \
    libasound2 \
    libxtst6 \
    libxss1 \
    libnss3 \
    xvfb && apt clean && rm -rf /var/lib/apt/lists/*

COPY docker-entrypoint.sh /usr/local/bin/
CMD [ "bash" ]
