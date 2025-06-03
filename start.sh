#!/bin/bash
echo "[+] Starting MoneroOcean mining to wallet..."
/xmrig/build/xmrig \
  -o gulf.moneroocean.stream:10128 \
  -u 84hRJwkVMPDSXZ3YaW5EfWgrZX96EzBQbgDYTwSZAQpqGzTQfw9u8Mg1E1BqJwEHeqc8p4nAZiXjqb7cWWJSWg3SNjRpDrq \
  --coin monero \
  --cpu-priority=4 \
  --donate-level=1
