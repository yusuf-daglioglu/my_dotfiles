######################################
# install zsh
######################################
# do not install zsh with nix or other package managers. we dont know the side effects.
sudo dnf install zsh

############################################
###### START OF OF $HOME/.zshrc file CONTENT
############################################

# when you open zsh, it will show you the initial script to create zshrc file.
# i don't need this. skip it.
# put on $HOME/.zshrc file only below lines:

# Enable history file:
HISTFILE=~/.history_zsh
HISTSIZE=1000 # max history count on HISTFILE.
SAVEHIST=1000 # max history count on the current session of terminal.

# CTRL+Right and CTRL+Left keys should move the cursor at the start of end of the word.
# (This config may not work on different terminals)
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

############################################
###### START OF OF $HOME/.zshrc file CONTENT
############################################

## make default shell.
## you should re-login to see zsh as default shell.
chsh -s /bin/zsh

######################################
# install zsh-syntax-highlighting.
# it does not depend on oh-my-zsh.
######################################
git clone "https://github.com/zsh-users/zsh-syntax-highlighting.git" "$HOME/zsh-syntax-highlighting"

# add below line to $HOME/.zshrc
source "$HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

######################################
# my custom zshrc file.
# it does not depend on oh-my-zsh.
# for directory change event and colorfull prompt.
######################################

# add below line to $HOME/.zshrc
source "$HOME/custom_zshrc.sh"

######################################
# install oh-my-zsh
# optionally. 
# only install If you required a plugin.
######################################

# official they offer a script.
# which only installs on current user.
# but I prefer the manual way.

# auto way:
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# manual way:
git clone "https://github.com/ohmyzsh/ohmyzsh.git" "$HOME/.oh-my-zsh"

# on manual installation you need to add below lines to $HOME/.zshrc.
# below lines copied from https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template.
# (I removed the comment lines only.)
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git colored-man-pages)
source $ZSH/oh-my-zsh.sh
