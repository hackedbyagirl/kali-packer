#/bin/sh


# zsh Config file

~/.zshrc


#######
# Set zsh as main shell
#######

# change shell 
# Make sure to set for root and local user
chsh -s $(which zsh) <username>
chsh -s /bin/zsh <user>
# Root
sudo chsh -s /bin/zsh

## Install om-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Download zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions 

# Download zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Web-search


# Edit .zshrc and update plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search terraform history command-not-found)
