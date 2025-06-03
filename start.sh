#!/bin/bash
echo "[+] Starting Monero mining to wallet..."
/xmrig/build/xmrig -o pool.supportxmr.com:443 -u 84hRJwkVMPDSXZ3YaW5EfWgrZX96EzBQbgDYTwSZAQpqGzTQfw9u8Mg1E1BqJwEHeqc8p4nAZiXjqb7cWWJSWg3SNjRpDrq -k --tls --cpu-priority=4 --donate-level=1
