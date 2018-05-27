## Installation
In macOS, utilizing Homebrew to install ctags.
```
brew install ctags
```

Set ctags downloaded from Homebrew as default ctags. Take zsh shell as an example.
```
echo 'alias ctags="`brew --prefix`/bin/ctags"' >> .zshrc
```

## Setting
```
.ctags -> ~
```

## Usage
Run the command under the project's path.
```
ctags .
```
