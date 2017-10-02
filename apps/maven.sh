#!/bin/bash

PREFIX="$HOME/.local"

# Remove the default gcloud install
sudo apt-get remove maven -y

# Download the latest version from google.com
zip_archive="/tmp/apache-maven-3.5.0-bin.zip"
curl -o "${zip_archive}" http://www-eu.apache.org/dist/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.zip

# Install it
mkdir -p "${PREFIX}"
cd "${PREFIX}"
unzip -u "${zip_archive}"
rm -f ./bin/mvn
ln -s ../apache-maven-3.5.0/bin/mvn ./bin/mvn

rm -f "${zip_archive}"
