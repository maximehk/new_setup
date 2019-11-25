#!/bin/bash

current_dir="$(pwd)"

work_dir=$(dirname $(readlink -f $0))
cd "${work_dir}"

# Get the download link for the latest version of SublimeText 3
bin_file="sublime_text_3.tar.bz2"
versions_url="https://www.sublimetext.com/3"
download_link="$(curl ${versions_url} 2> /dev/null | perl -lane 'if (/(http.*?bz2)/) {print $1; exit 0;}')"
version="$(echo ${download_link} | perl -lane '/(\d+)_x64/ && print $1')"
bin_file="sublime_text_3_${version}.tar.bz2"

echo "Downloading $download_link"
curl -o "${bin_file}" "${download_link}"

# Install it
mkdir -p $HOME/.local
cd $HOME/.local
rm -rf sublime_text3
tar jxf "${work_dir}/${bin_file}"

# Update the sym link
cd $HOME/.local/bin
rm sublime_text
ln -s ../sublime_text_3/sublime_text

# Cleanup
rm -f "${work_dir}/${bin_file}"
cd "$current_dir"

