FROM ubuntu:latest

WORKDIR /app

RUN apt update && \
    apt upgrade -y && \
    apt install -y git \
    python3 \
    pip \
    python3.12-venv \
    libglu1-mesa-dev \
    libxkbcommon-x11-0 \
    libxcb-cursor0 \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-xinerama0 \
    libx11-xcb-dev \
    libxcb-glx0-dev \
    libxcb-keysyms1-dev \
    libxcb-shape0

RUN apt-get update -y && \
    apt-get install -y libglib2.0-dev \
    libegl1 \
    libxkbcommon-dev \
    libdbus-1-3

RUN git clone https://github.com/heinz-preisig/PeriConto_generic.git

ENV QT_DEBUG_PLUGINS=1

COPY requirements.txt .
RUN pip3 install -r requirements.txt --break-system-packages

WORKDIR /app/PeriConto_generic/src
