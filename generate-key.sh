#!/bin/bash

# Generate an RSA private key in PEM encoded format
ssh-keygen -t rsa -b 4096 -m PEM -f giftless.key

# Extract the public key to a PEM file
openssl rsa -in giftless.key -pubout -outform PEM -out giftless.key.pub
