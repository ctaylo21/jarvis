#!/usr/env sh
INSTALLDIR=$PWD

echo "$(tput setaf 2)JARVIS: Greetings. Preparing to power up and begin diagnostics.$(tput sgr 0)"

createLinks () {
    if [ ! -d ~/.vim ]; then
        echo "$(tput setaf 2)JARVIS: Linking files.$(tput sgr 0)"
        ln -sfn $INSTALLDIR/jarvis ~/.vim
    else
        echo "$(tput setaf 2)JARVIS: Moving ~/.vim to ~/.vim.bkp$(tput sgr 0)"
        mv ~/.vim ~/.vim.bkp
        ln -sfn $INSTALLDIR/jarvis ~/.vim
    fi

    if [ ! -f ~/.vimrc ]; then
        echo "$(tput setaf 2)JARVIS: linking ~/.vimrc to my vimrc$(tput sgr 0)"
        ln -sfn $INSTALLDIR/jarvis/vimrc ~/.vimrc
    else
        echo "$(tput setaf 2)JARVIS: Moving ~/.vimrc to ~/.vimrc.bkp$(tput sgr 0)"
        mv ~/.vimrc ~/.vimrc.bkp
        ln -sfn $INSTALLDIR/jarvis/vimrc ~/.vimrc
    fi
}



which git > /dev/null
if [ "$?" != "0" ]; then
  echo "$(tput setaf 2)JARVIS: I require git to be installed to continue.$(tput sgr 0)"
  exit 1
fi

which vim > /dev/null
if [ "$?" != "0" ]; then
  echo "$(tput setaf 2)JARVIS: It would be beneficial if you installed Vim before we continue.$(tput sgr 0)"
  exit 1
fi

if [ ! -d "$INSTALLDIR/jarvis" ]; then
    echo "$(tput setaf 2)JARVIS: I do not detect a previous installation. Creating a new version.$(tput sgr 0)"
    git clone https://github.com/ctaylo21/jarvis.git
    createLinks
    cd $INSTALLDIR/jarvis

else
    echo "$(tput setaf 2)JARVIS: Previous installation detected. Updating to latest version.$(tput sgr 0)"
    cd $INSTALLDIR/jarvis
    git pull origin master
    createLinks
fi

if [ ! -d "bundle" ]; then
    echo "$(tput setaf 2)JARVIS: Creating bundle directory.$(tput sgr 0)"
    mkdir bundle
fi

if [ ! -d "tmp/backup" ]; then
    echo "$(tput setaf 2)JARVIS: Creating backup directories.$(tput sgr 0)"
    mkdir -p tmp/backup tmp/swap tmp/undo
fi

if [ ! -d "bundle/vundle" ]; then
    echo "$(tput setaf 2)JARVIS: Installing Vundle$(tput sgr 0)"
    git clone https://github.com/gmarik/vundle.git bundle/vundle
fi

if [ ! -f "vimrc.local" ]; then
    echo "$(tput setaf 2)JARVIS: No local file detected. Copying base vimrc.custom to vimrc.local. Make any custom changes here.$(tput sgr 0)"
    cp vimrc.custom vimrc.local
fi

echo "$(tput setaf 2)JARVIS: System update complete. Currently running at 100% power. Enjoy."

vim +BundleInstall +qall 2>/dev/null 
