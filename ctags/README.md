## Installation for Exuberant Ctags
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
Run the command under the project's root directory.
```
ctags -R ~/project/root/directory
```

## Installation for Universal Ctags(Recommended)
exuberant-ctags has no longer supported, but universal-ctags forked from exuberant-ctags keeps maintaining.
Interesting thing is that Reza Jelveh, GitHub exuberant-ctags project starter, was later moved to the universal-ctags organization.
### macOS:
Set ctags downloaded from Homebrew as default ctags. Take zsh shell as an example.
```
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
```
Set ctags downloaded from Homebrew as default ctags. Take zsh shell as an example.
```
echo 'alias ctags="`brew --prefix`/bin/ctags"' >> .zshrc
```

## Customization
Universal-ctags doesn't load ~/.ctags and ./.ctags at starting up time. Instead, it loads ~/.ctags.d/*.ctags and ./.ctags.d/*.ctags.
```
mkdir -p ~/.ctags.d/ & cp setting.ctags ~/.ctags.d/
```

## Usage
Run the command under the project's root directory.
```
ctags -R ~/project/root/directory
```
