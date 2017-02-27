#!/bin/bash

# Remove the default gcloud install
sudo apt-get remove google-cloud-sdk -y

# Download the latest version from google.com
curl -o /tmp/install_gcloud.sh https://sdk.cloud.google.com 
chmod +x /tmp/install_gcloud.sh

# Install it
mkdir -p $HOME/.local
/tmp/install_gcloud.sh --disable-prompts --install-dir $HOME/.local

$HOME/.local/google-cloud-sdk/bin/gcloud components install app-engine-python kubectl -q

# Cleanup
rm -f /tmp/install_gcloud.sh
