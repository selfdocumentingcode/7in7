FROM mcr.microsoft.com/devcontainers/base:bullseye

RUN apt update && apt upgrade -y
RUN apt install -y cmake
RUN git clone --recursive https://github.com/IoLanguage/io.git && \
    cd io && \
    mkdir build
WORKDIR /io/build
RUN cmake ..
RUN make
RUN make install