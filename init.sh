#!/bin/bash

work_dir=$(dirname $(readlink -f $0))

cd "${work_dir}"
sudo apt-get update && xargs -ra packages.txt sudo apt-get install -y
sudo chsh -s $(which zsh) ${USER}
vcsh clone https://github.com/maximehk/mr.git mr

cd "$HOME"
mr update

if [[ "$1" == "--install-apps" ]] ; then
  find $work_dir/apps -name '*.sh' -type f -print0 | xargs -0 -n1 bash 
fi
