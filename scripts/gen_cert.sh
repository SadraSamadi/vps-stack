#!/usr/bin/env bash
# Usage: sudo ./gen_cert.sh example.com admin@example.com /etc/myapp/certs
set -ex

DOMAIN=$1
EMAIL=$2
OUTPUT_DIR=$3

if ! command -v certbot &>/dev/null; then
  echo "certbot not found. Installing..."
  apt-get install -y certbot || { echo "Failed to install certbot."; exit 1; }
fi

certbot certonly --standalone --non-interactive --agree-tos \
  --no-eff-email --email "$EMAIL" --domain "$DOMAIN"

mkdir -p "$OUTPUT_DIR"
cp -L /etc/letsencrypt/live/$DOMAIN/fullchain.pem "$OUTPUT_DIR/cert.pem"
cp -L /etc/letsencrypt/live/$DOMAIN/privkey.pem   "$OUTPUT_DIR/key.pem"

echo "Done! Certs saved to $OUTPUT_DIR"
