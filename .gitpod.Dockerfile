FROM gitpod/workspace-full-vnc

USER root

RUN apt-get update \
  && apt-get install -y chromium-browser \
  && rm -rf /var/lib/apt/lists/*

USER gitpod
