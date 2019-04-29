# zsh-lazyload
zsh plugin for lazy load commands and speed up start up time of zsh


## Usage

`lazyload <load-command> <command-name...>`

#### Examples
`lazyload 'source "$(brew --prefix nvm)/nvm.sh"' nvm`

Load functions prefixed with `load:` will be unloaded by `lazyload` after first usage
```
load:nvm(){
  'source "$(brew --prefix nvm)/nvm.sh"'
}
lazyload load:nvm nvm
```

## Install

### [zgem](https://github.com/qoomon/zgem)
`zgem bundle 'https://github.com/qoomon/zsh-lazyload.git' from:'git' use:'zsh-lazyload.zsh'`
### [zplug](https://github.com/zdharma/zplugin)
`zplug qoomon/zsh-lazyload`
### [zgen](https://github.com/tarjoilija/zgen)
```
zgen load qoomon/zsh-lazyload
zgen save
```
### [Antigen](https://github.com/zsh-users/antigen)
```
antigen bundle qoomon/zsh-lazyload
antigen apply
```
### [Oh My ZSH! custom plugin](http://ohmyz.sh/)
```
git clone https://github.com/qoomon/zsh-lazyload $ZSH_CUSTOM/plugins/zsh-lazyload
plugins+=(k)
```
### [zplug](https://github.com/zplug/zplug)
`zplug "qoomon/zsh-lazyload"`
### manually
```
git clone https://github.com/qoomon/zsh-lazyload.git
source zsh-lazyload/zsh-lazyload.zsh
```


