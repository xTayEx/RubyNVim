#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

# install packer.nvim
echo '${RED}Install packer.nvim${NC}'
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install external dependencies
# install elinks and htop
if ! command -v elinks
then
	echo '${RED}Install elinks${NC}'
	sudo apt install elinks -y
fi

if ! command -v htop
then
	echo '${RED}Install htop${NC}'
	sudo apt install htop -y
fi
# install lazygit
if ! command -v lazygit
then
	echo '${RED}Install lazygit${NC}'
	go install github.com/jesseduffield/lazygit@latest
fi
# install termscp
if ! command -v termscp
then
	echo '${RED}Install termscp${NC}'
	curl --proto '=https' --tlsv1.2 -sSLf "https://git.io/JBhDb" | sh
fi
# install so

echo '${RED}Install so${NC}'
if ! command -v so
then
	cargo install so
fi
#install chafa
if ! command -v chafa
then
echo '${RED}Install chafa${NC}'
	git clone https://github.com/hpjansson/chafa.git ~/chafa
	cd ~/chafa
	./autogen.sh
	make
	sudo make install
fi

mkdir -p ~/.config/nvim/
mkdir -p ~/.config/nvim/lua/
mkdir -p ~/.config/nvim/util/

mv init.lua ~/.config/nvim/init.lua
mv lua/ ~/.config/nvim/
mv util/ ~/.config/nvim/
