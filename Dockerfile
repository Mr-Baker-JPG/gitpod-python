FROM gitpod/workspace-full-vnc:latest

# Install dependencies
RUN apt-get update \
  && apt-get install -y k-dev tk tcl-dev tcl python3-tk libx11-dev libxkbfile-dev libsecret-1-dev libgconf2–4 libnss3 libasound2-dev twm \
  && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

