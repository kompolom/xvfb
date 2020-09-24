FROM node:13.13.0-slim
RUN apt update && apt install -y \
    gosu \
    git \
    bzip2 \
    libgtk2.0-0 \
    libgconf-2-4 \
    libasound2 \
    libxtst6 \
    libxss1 \
    libnss3 \
    xvfb && rm -rf /var/lib/apt/lists/*
COPY start-xvfb.sh /
