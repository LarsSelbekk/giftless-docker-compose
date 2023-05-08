#!/bin/bash

if [[ -z "$1" || -z "$2" ]];
then
  echo "help: ./generate-token.sh username namespace/repo"
  exit 1
fi

SCOPES="obj:$1/*"
JWT_TOKEN=$(pyjwt --alg RS256 --key "$(cat giftless.key)" encode sub="$2" scopes="$SCOPES")
echo "$JWT_TOKEN"
