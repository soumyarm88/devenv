## DevEnv Installation steps:

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

## Java installation steps:

### Install different versions
```brew install --cask temurin```
```brew install --cask temurin@21```
```brew install --cask temurin@17```

### Verify current and available versions
- ```java -version``` shows the current version.
- devenv provides alternative easy function ```show_java_versions```.

### Set java version
- devenv comes with a ```set_java_home``` function to set java version easily.
  - eg. ```set_java_home 17```
- devenv sets default to 21.
