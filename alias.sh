## Functions
killport() {
    sudo kill -9 $(sudo fuser -n tcp $1 2> /dev/null);
}
addtheme() {
    echo $1 >> ~/aliases/zsh_themes/themes.txt
    echo "$1 has been added."
}
removetheme() {
    echo $1 >> ~/aliases/zsh_themes/broken_themes.txt
    echo "$1 has been removed."
}
setgitconfig() {
    git config --global user.email $1
    git config --global user.name $2
}
addalias() {
    echo "alias $1" >> ~/aliases/alias.sh
    src
}
## Aliases
alias bashrc="vim ~/.bashrc && source ~/.bashrc"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias srcbash="source ~/.bashrc"
alias srczsh="source ~/.zshrc"
alias src="srcbash && srczsh"
alias start_mysql="sudo service mysql start"
