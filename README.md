# zsh-lazyload [![starline](https://starlines.qoo.monster/assets/qoomon/zsh-lazyload)](https://github.com/qoomon/starlines)

zsh plugin for lazy load commands and speed up start up time of zsh


## Usage
`lazyload command_name [command_name...] -- load_command`

#### Examples
##### `nvm`
- `lazyload nvm -- 'source ~/.nvm/nvm.sh'`

## Install

### [zgem](https://github.com/qoomon/zgem)
`zgem bundle 'https://github.com/qoomon/zsh-lazyload.git' from:'git' use:'zsh-lazyload.zsh'`
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
plugins+=(zsh-lazyload)
```
### [zplug](https://github.com/zplug/zplug)
`zplug "qoomon/zsh-lazyload"`
### manually
```
git clone https://github.com/qoomon/zsh-lazyload.git
source zsh-lazyload/zsh-lazyload.zsh
```


