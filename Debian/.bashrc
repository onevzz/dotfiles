[[ $- != *i* ]] && return
#neofetch

# Exports
export PS1="\e[1;33m[\u@\h \W]\$ \e[0m"
export PS2="\e[1;33m>> \e[0m"
export GPG_TTY="$(tty)"
export HISTSIZE=2000
export HISTFILESIZE=2000
export HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s checkwinsize

# Aliases
alias v="vim"
alias ..="cd .."
alias mv="mv -vi"
alias rm="rm -vi"
alias cp="cp -vi"
alias ln="ln -vi"
alias ls="ls -hA --color=auto"
alias la="ls -lhA --color=auto"
alias grep="grep --color=auto"
alias pip="pip3"
alias python="python3"
alias spotdl="spotdl"
alias songdl="yt-dlp -x --audio-format mp3"
alias clearhst="history -c && clear"
alias purgehst="rm -vf $HOME/.bash_history && history -c && clear"
alias startnet="sudo systemctl start NetworkManager.service && echo 'Finishing the operation.....' && sleep 5s"
alias restartnet="sudo systemctl restart NetworkManager.service && echo 'Finishing the operation.....' && sleep 5s"
alias virtualnet="sudo virsh net-start default && echo 'Finishing the operation.....' && sleep 5s"
alias wasd="clear && echo '---------- UPDATE --------------------------------' && sudo apt update && echo '---------- UPGRADE -------------------------------' && sudo apt -y upgrade && echo '---------- AUTOREMOVE ----------------------------' && sudo apt -y autoremove && echo '---------- REBOOTING -----------------------------' && echo 'Rebooting the system.....' && sleep 5s && systemctl reboot"
alias ttyreconfigure="sudo dpkg-reconfigure console-setup"

# Functions
c() {
    if [ -d .git ]; then
        clear && git status && la;
    else
        clear && la;
    fi;
}
cc() { cd "$@" && c; }
git0() { git reset --hard && git clean -fdx && clear && git status && la; }
gitt() { git add -A && git commit -m "$@" && git push; }

