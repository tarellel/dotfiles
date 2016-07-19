# .dotfiles

* Various configuration files for necessary programs
* Automated Project Creation
* Various aliases/functions used for development
* RVM Support
* Various System Preferences


### Prerequisites

* [Xcode](https://developer.apple.com/xcode/) (download from App store)
* Command Line Tools for [Xcode](https://developer.apple.com/xcode/downloads/) (run `xcode-select --install` to install)
* [Homebrew](http://mxcl.github.io/homebrew/)
* [oh-my-zshrc](https://github.com/robbyrussell/oh-my-zsh)


### Must have Apps
* Download/Install [Alfred](http://www.alfredapp.com/)
* Download/Install [Chrome](https://www.google.com/chrome)
* Download/Install [iTerm2](http://www.iterm2.com/)
* Download/Install [Postgres.app](http://postgresapp.com/)
* Download/Install [Sublime Text](http://www.sublimetext.com/)
* Download/Install [Atom.io](https://atom.io/) [ currently prefer over sublime]

* Download/Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Download/Install [Vagrant](http://www.vagrantup.com/downloads.html)
* Download/install [Ansible](http://docs.ansible.com/intro_installation.html#latest-releases-via-homebrew-mac-osx)

    brew install ansible

### Apps that make life easier
* Download/Install [Flux](https://justgetflux.com/)
* Download/Install [ImageOptim](https://imageoptim.com/)
* Download/Install [Caffeine](https://itunes.apple.com/us/app/caffeine/id411246225?mt=12)
* Download/Install [FlyCut (Clipboard Manager)](https://itunes.apple.com/us/app/flycut-clipboard-manager/id442160987?mt=12)

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
    optipng jpegoptim

### Ruby
    \curl -sSL https://get.rvm.io | bash -s stable
    rvm install 2.1.1
    rvm --default use 2.1.1
    
Make sure your ruby install supports READLINE
* [Add-Readline-support-to-Ruby-on-Mac-OS-X](https://github.com/guard/guard/wiki/Add-Readline-support-to-Ruby-on-Mac-OS-X)
* [pry-bloodline readline](https://github.com/Arkham/pry-bloodline)


### Required node modules
    npm install -g coffeelint
    npm install -g jshint
    npm install -g diff-so-fancy
    npm install -g jsonlint
    
    # list currently globally installed npms
    npm -g ls
    # list local installed npms
    npm ls
    # list with 1 level of depth, rather than the whole tree
    npm -g ls

### Docker (used by CodeClimate)
    # https://docs.docker.com/machine/get-started/
    brew update
    brew install docker
    brew install docker-machine
    # misc: http://stackoverflow.com/questions/21871479/docker-cant-connect-to-docker-daemon
    
    # to start it (not required)
    $: docker-machine start
    
    # create default docker machine
    docker-machine create --driver virtualbox default
    
    # check to see if it exists
    docker-machine ls
    
    # to export ENV values to run machine
    docker-machine env default
    eval $(docker-machine env default)
    
    # start/stop docker
    docker-machine stop default
    docker-machine start default
    
### Code Climate
    # installation (docker much be running before this command is ran)
    eval $(docker-machine env default)
    docker pull codeclimate/codeclimate
  
#### install codeclimate with homebrew  
    # install
    brew tap codeclimate/formulae
    brew install codeclimate
    
    # update
    brew update
    brew upgrade codeclimate
    
##### make sure to have a proper '.codeclimate.yml' config
[List of CodeClimate engines](https://docs.codeclimate.com/docs/list-of-engines)
    # start docker machine
    docker-machine start default    
    eval "$(docker-machine env default)"
    docker pull codeclimate/codeclimate
    
    # displays list of available engines that you can use
    docker run \
    --interactive --tty --rm \
    --env CODECLIMATE_CODE="$PWD" \
    --volume "$PWD":/code \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume /tmp/cc:/tmp/cc \
    codeclimate/codeclimate engines:list
    
    # install engines that you will be using/ updates engines to lastest installs
    docker run \
    --interactive --tty --rm \
    --env CODECLIMATE_CODE="$PWD" \
    --volume "$PWD":/code \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume /tmp/cc:/tmp/cc \
    codeclimate/codeclimate engines:install
    
    # run all specified engines in the specified project (html output)
    docker run \
    --interactive --tty --rm \
    --env CODECLIMATE_CODE="$PWD" \
    --volume "$PWD":/code \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume /tmp/cc:/tmp/cc \
    codeclimate/codeclimate analyze -f html
    
    # text output
    docker run \
    --interactive --tty --rm \
    --env CODECLIMATE_CODE="$PWD" \
    --volume "$PWD":/code \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume /tmp/cc:/tmp/cc \
    codeclimate/codeclimate analyze -f text




### Database
* [Postgres.app](http://postgresapp.com/)
* [Lita - SQlite](http://www.dehats.com/drupal/?q=node/58)
* [Induction - Postgres, MySQL, SQlite Database Client](http://inductionapp.com/)

##### Sample dotfiles
* [iain](https://github.com/iain/dotfiles)
* [fleeting](https://github.com/fleeting/dotfiles)
* [lucapette](https://github.com/lucapette/dotfiles)
