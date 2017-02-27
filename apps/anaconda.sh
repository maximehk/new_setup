#!/bin/bash

work_dir=$(dirname $(readlink -f $0))
cd "${work_dir}"

bin_file=$(curl https://repo.continuum.io/archive/index.html 2>/dev/null | perl -lane 'if (/(Anaconda3.*?Linux-x86_64.sh)/) { print $1; exit 0; }')
download_link="https://repo.continuum.io/archive/$bin_file"

echo "Downloading $download_link"
curl -o "${bin_file}" "${download_link}"

chmod +x "${bin_file}"
"${work_dir}/${bin_file}" -p "$HOME/.local/anaconda3" -b

rm -f "${bin_file}"
cd -

