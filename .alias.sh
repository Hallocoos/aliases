killport() {
    sudo kill -9 $(sudo fuser -n tcp $1 2> /dev/null);
}
export -f killport
alias bashrc="vim ~/.bashrc && source ~/.bashrc"
alias cd="cd .."