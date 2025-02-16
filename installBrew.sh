rm -rf $HOME/.brew
rm -rf $HOME/goinfre/.brew

git clone --depth=1 https://github.com/Homebrew/brew $HOME/goinfre/.brew

cat > $HOME/goinfre/.brewconfig.zsh <<EOL

export PATH=\$HOME/goinfre/.brew/bin:\$PATH

export HOMEBREW_CACHE=/tmp/\$USER/Homebrew/Caches
export HOMEBREW_TEMP=/tmp/\$USER/Homebrew/Temp

mkdir -p \$HOMEBREW_CACHE
mkdir -p \$HOMEBREW_TEMP

if df -T autofs,nfs \$HOME/goinfre 1>/dev/null
then
  HOMEBREW_LOCKS_TARGET=/tmp/\$USER/Homebrew/Locks
  HOMEBREW_LOCKS_FOLDER=\$HOME/goinfre/.brew/var/homebrew

  mkdir -p \$HOMEBREW_LOCKS_TARGET
  mkdir -p \$HOMEBREW_LOCKS_FOLDER

  if ! [[ -L \$HOMEBREW_LOCKS_FOLDER && -d \$HOMEBREW_LOCKS_FOLDER ]]
  then
     echo "Creating symlink for Locks folder"
     rm -rf \$HOMEBREW_LOCKS_FOLDER
     ln -s \$HOMEBREW_LOCKS_TARGET \$HOMEBREW_LOCKS_FOLDER
  fi
fi
EOL

if ! grep -q "# Load Homebrew config script" $HOME/.zshrc
then
cat >> $HOME/.zshrc <<EOL

source \$HOME/goinfre/.brewconfig.zsh
EOL
fi

source $HOME/goinfre/.brewconfig.zsh
rehash
brew update

echo "\nPlease open a new shell to finish installation"
