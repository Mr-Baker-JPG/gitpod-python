FROM gitpod/workspace-full-vnc:latest

# Install dependencies
# RUN apt-get update \
#   && apt-get install -y tk-dev tk tcl-dev tcl python3-tk libx11-dev libxkbfile-dev libsecret-1-dev libgconf2–4 libnss3 libasound2-dev twm \
#   && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

RUN apt-get update && apt-get install -y \
  libblas-dev \
  liblapack-dev\
  libatlas-base-dev \
  gfortran \
  python3-pip \
  tk-dev \
  python-tk \
  python3-tk \
  python3-matplotlib \
  pkg-config \
  libfreetype6-dev \
  && apt-get install -y libx11-dev libxkbfile-dev libsecret-1-dev libgconf2–4 libnss3 \
  && apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN pip install -U distribute \
  setuptools \
  pip