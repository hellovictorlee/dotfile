## Installation
### macOS:
```
brew tap zegervdv/zathura
brew install --HEAD meson
brew install zathura
brew install zathura-pdf-poppler
```
```

$ mkdir -p $(brew --prefix zathura)/lib/zathura
$ ln -s $(brew --prefix zathura-pdf-poppler)/libpdf-poppler.dylib $(brew --prefix zathura)/lib/zathura/libpdf-poppler.dylib
```
reference: [homebrew-zathura](https://github.com/zegervdv/homebrew-zathura)

### Ubuntu:
```
sudo apt-get install zathura
```

## Customization
```
mkdir -p ~/.config/zathura
cp zathurarc ~/.config/zathura
```
