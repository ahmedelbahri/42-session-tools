#!/bin/zsh

V="23.8.0-linux-x64"

rm -rf $HOME/.node
rm -rf $HOME/goinfre/.node

curl -fsSL https://nodejs.org/dist/latest/node-v$V.tar.xz -o $HOME/goinfre/node.tar.xz

tar -xf $HOME/goinfre/node.tar.xz -C $HOME/goinfre/

mv /$HOME/goinfre/node-v$V ~/goinfre/.node

rm -rf $HOME/goinfre/node.tar.xz

if ! grep -q 'export PATH="$HOME/goinfre/.node/bin:$PATH"' ~/.zshrc; then
    echo 'export PATH="$HOME/goinfre/.node/bin:$PATH"' >> ~/.zshrc
    echo "Added Node.js path to .zshrc"
else
    echo "Node.js path already exists in .zshrc"
fi

source ~/.zshrc
