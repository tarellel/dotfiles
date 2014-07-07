# .dotfiles

* Various configuration files for necessary programs
* Automated Project Creation
* Various aliases/functions used for development
* RVM Support
* Various System Preferences


### Prerequisites

* [Xcode](https://developer.apple.com/xcode/) (download from App store)
* Command Line Tools for [Xcode](https://developer.apple.com/xcode/downloads/) (run `xcode-select --install` to install)
* [iTerm2](http://www.iterm2.com/)
* [Homebrew](http://mxcl.github.io/homebrew/)
* [oh-my-zshrc](https://github.com/robbyrussell/oh-my-zsh)


### Homebrew

    brew install imagemagick readline wget libyaml libksba git sqlite redis zsh v8 node openssl

##### To Install
    memcached

##### Installed
    apple-gcc42	git		libtool		openssl		sqlite
    autoconf	imagemagick	libxml2		optipng		v8
    automake	jasper		libxslt		ossp-uuid	wget
    curl-ca-bundle	jpeg		libyaml		pcre		zsh
    fontconfig	libgpg-error	little-cms	pkg-config
    freetype	libksba		mcrypt		readline
    gdbm		libpng		mhash		redis
    gettext		libtiff		node		scons

### Ruby
    \curl -sSL https://get.rvm.io | bash -s stable
    rvm install 2.1.1
    rvm --default use 2.1.1

### Postgres
[Postgres.app](http://postgresapp.com/)



##### Sample dotfiles
* [iain](https://github.com/iain/dotfiles)
* [fleeting](https://github.com/fleeting/dotfiles)
* [lucapette](https://github.com/lucapette/dotfiles)