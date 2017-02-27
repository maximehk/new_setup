#!/bin/bash

work_dir=$(dirname $(readlink -f $0))
cd "${work_dir}"

# Download the latest version of Anaconda 3
versions_url="https://repo.continuum.io/archive/index.html"
bin_file=$(curl ${versions_url} 2>/dev/null | perl -lane 'if (/(Anaconda3.*?Linux-x86_64.sh)/) { print $1; exit 0; }')
download_link="https://repo.continuum.io/archive/$bin_file"

echo "Downloading $download_link"
curl -o "${bin_file}" "${download_link}"

# Install it
mkdir -p $HOME/.local
chmod +x "${work_dir}/${bin_file}"
"${work_dir}/${bin_file}" -p "$HOME/.local/anaconda3" -b

# Cleanup
rm -f "${bin_file}"
cd -

