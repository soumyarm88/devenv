## Installation steps:

### [Optional] Install Homebrew, Git & GitHub
```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```
```brew install git```
```/opt/homebrew/bin/git --version```
```brew install --cask github```
```/opt/homebrew/bin/gh --version```

### [Required] Install Oh My ZSH
```sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"```

### [Required] Clone this package locally
```mkdir ~/Lab```
```cd ~/Lab```
```/opt/homebrew/bin/github repo clone soumyarm88/devenv```

- home brew based paths already packaged into devenv.
- handle github auth as prompted.

### [Optional] Backup dot files into /tmp
```cp $HOME/.[^.]* /tmp/```

### [Required] Install new dot files from devenv
```.~/Lab/devenv/shell/reload.sh```

