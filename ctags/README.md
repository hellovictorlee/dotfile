## Installation
### macOS:
```
brew install ctags
```
### Ubuntu:
```
sudo apt-get install ctags
```

Set ctags downloaded from Homebrew as default ctags. Take zsh shell as an example.
```
echo 'alias ctags="`brew --prefix`/bin/ctags"' >> .zshrc
```

## Customization
```
cp .ctags ~
```

## Usage
Run the command under the project's path.
```
ctags .
```
