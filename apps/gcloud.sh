#!/bin/bash

curl -o /tmp/install_gcloud.sh https://sdk.cloud.google.com 
chmod +x /tmp/install_gcloud.sh

mkdir -p $HOME/.local
/tmp/install_gcloud.sh --disable-prompts --install-dir $HOME/.local

$HOME/.local/google-cloud-sdk/bin/gcloud components install app-engine-python kubectl -q

rm -f /tmp/install_gcloud.sh
