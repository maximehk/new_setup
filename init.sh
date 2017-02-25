#!/bin/bash

work_dir=$(dirname $(readlink -f $0))

cd "${work_dir}"
sudo apt-get update && cat packages.txt | xargs sudo apt-get install -y
sudo chsh -s $(which zsh) ${USER}
vcsh clone https://github.com/maximehk/zsh.git zsh

find $work_dir/apps -name '*.sh' -type f -print0 | xargs -0 -n1 bash 
