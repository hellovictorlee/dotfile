# Develope

## AWS CLI
```
sudo apt-get install awscli
```
or
```
sudo snap install aws-cli --classic
```

## yarn

```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn
```
or
```
sudo pacman -S yarn
```

## serverless

```
npm install -g serverless
```

[setting aws credentials](https://serverless.com/framework/docs/providers/aws/guide/credentials/)

## Webstorm

```
sudo snap install webstorm --classic
```

## Node.js
```
sudo apt-get install libssl1.0-dev nodejs-dev
sudo apt-get install Node.js
sudo apt-get install npm
sudo npm install -g n
```

## Python

```
sudo apt-get install python3.7
sudo apt install python3-pip
sudo apt install python3-venv
```

run virtual environment called sample
```
python3 -m venv sample
```

install ipython
```
sudo apt-get install -y ipython3
```

install Jupyter
```
sudo pip3 install jupyter
```

run Jupyter
```
jupyter notebook
```

## GitKraken
```
sudo apt update
sudo apt install snapd
sudo snap install gitkraken
```

## emacs
```
yay -S emacs
```

## spacemacs
```
cd ~
mv .emacs.d .emacs.d.bak
mv .emacs .emacs.bak
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

## ruby
```
sudo pacman -S ruby
```

add to .zshrc
```
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
```

## yapf

A formatter for Python files
```
sudo pip install yapf
```

## fzf

```
sudo pacman -S fzf
```

## fd

```
sudo pacman -S fd
```

## diffmerge

```
yay -S diffmerge
```

## docker

```
sudo pacman -Syu docker
```

## graphql-playground
```
yay -Syu graphql-playground-electron
```
