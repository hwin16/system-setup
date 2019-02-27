#!/bin/bash

# OSX
# Change \e to \033
BLUE="\033[1;34m"
CRESET="\033[0m"
DONE="[${BLUE}DONE${CRESET}]"
DATE=$(date +%Y-%m-%d)

# setupmenu
menu() { 
    echo -e "./install.sh [COMMAND]"
    echo -e "Command:"
    echo -e "    vim - copy vimrc file to ~/.vimrc"
    echo -e "    bash - copy bash_proile file to ~/.bash_profile"
}

# setting up bash_profile
setup_bash() { 
    cp ~/.bash_profile ~/.bash_profile-${DATE}
    cat bash/bash_profile >> ~/.bash_profile
    source ~/.bash_profile
    echo -e "${DONE} Finished setting up bash_profile" 
}

# copying vimrc
setup_vim() { 
    cp vim/vimrc ~/.vimrc
    echo -e "${DONE} Finished setting up vimrc" 
}

# show menu
while [ "$1" != "" ]; do
    case $1 in
        vim) 
            setup_vim
            exit
            ;;
        bash)
            setup_bash
            exit
            ;;
        *)
            menu;
            exit 1; 
        
    esac
done
