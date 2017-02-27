# new_setup

This repository can be used to init your system/user settings

## Installation

```bash
sudo apt-get install -y git && \
  git clone https://github.com/maximehk/new_setup.git && \
  ./new_setup/init.sh
```

## Information

It pulls from the following github repositories:
  * https://github.com/maximehk/mr [myrepos](https://myrepos.branchable.com/) config files
  * https://github.com/maximehk/tmux
  * https://github.com/maximehk/vim
  * https://github.com/maximehk/zsh

It also installs:
  * all the packages in [packages.txt](https://github.com/maximehk/new_setup/blob/master/packages.txt)
  * [anconda3](https://www.continuum.io/anaconda-overview)
  * [docker](https://www.docker.com/)
  * [gcloud](https://cloud.google.com/sdk/gcloud/)
