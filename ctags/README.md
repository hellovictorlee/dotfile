## Installation
### macOS:
```
brew install ctags
```

Set ctags downloaded from Homebrew as default ctags. Take zsh shell as an example.
```
echo 'alias ctags="`brew --prefix`/bin/ctags"' >> .zshrc
```

### Ubuntu:
```
sudo apt-get install ctags
```

## Customization
```
cp .ctags ~
```

## Usage
Run the command under the project's path.
```
ctags -R .
```
