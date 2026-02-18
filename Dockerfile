FROM ubuntu:22.04

RUN apt update && apt install -y \
    build-essential \
    cmake

WORKDIR /app

COPY . .

RUN mkdir build && cd build && cmake .. && make

CMD ["./build/video-encoder-worker"]