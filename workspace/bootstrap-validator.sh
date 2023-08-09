#!/usr/bin/env bash

nohup solana-validator \
  --no-os-network-limits-test \
  --no-wait-for-vote-to-start-leader \
  --full-snapshot-interval-slots 200 \
  --identity id.json \
  --vote-account vote.json \
  --ledger ledger \
  --log logs/solana-validator.log \
  --gossip-host 127.0.0.1 \
  --gossip-port 8001 \
  --rpc-port 8899 \
  --rpc-faucet-address 127.0.0.1:9900 \
  --rpc-bind-address 0.0.0.0 \
  --full-rpc-api \
  --allow-private-addr \
  --enable-cpi-and-log-storage \
  --enable-rpc-transaction-history \
  >logs/init-validator.log 2>&1 &
