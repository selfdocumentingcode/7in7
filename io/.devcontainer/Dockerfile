FROM mcr.microsoft.com/devcontainers/base:trixie

RUN apt update && apt upgrade -y
RUN apt install -y cmake

RUN git clone https://github.com/IoLanguage/io.git

WORKDIR /io

# Pre-AI slop commit
RUN git checkout 0a98ace
RUN git submodule update --init 

RUN mkdir /io/build

WORKDIR /io/build
RUN cmake ..
RUN make
RUN make install
