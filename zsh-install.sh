# Get ZSH
sudo apt install -y zsh

# Get Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Put the good theme
mv ~/.zshrc ~/.zshrc.in
sed -e 's/THEME=basic/THEME=agnoster/g' ~/.zshrc.in > ~/zshrc

# Resource ZSH
zsh
