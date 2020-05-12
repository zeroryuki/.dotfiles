if [ ! -d "${HOME}/.zplugin" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
fi

# Load `zplugin`
source ~/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# Functions to make configuration less verbose
zt() { zplugin ice wait"${1}" lucid               "${@:2}"; } # Turbo
zi() { zplugin ice lucid                            "${@}"; } # Regular Ice
zl() { [ -z $2 ] && zplugin light "${@}" || zplugin "${@}"; } # zplugin
zd() { zplugin load                                 "${@}"; }

zt 0a
zl snippet OMZ::lib/clipboard.zsh

for plg1 (
        archlinux
        copyfile
        copydir
        common-aliases
        command-not-found
        colored-man-pages
        cp
        extract
        history
        web-search
){
zl snippet OMZ::plugins/$plg1/$plg1.plugin.zsh
}

for plg2 (
        git
        node
        pip
        npm
        sudo
        gpg-agent
        systemd
){

zi if'[[ -n "$commands[$plg2]" ]]'
zl snippet OMZ::plugins/$plg2/$plg2.plugin.zsh
}

# Venom
zt 0a atload"zpcompinit"
zl snippet https://gist.githubusercontent.com/zeroryuki/6b413f60240bc6f844db72747afdd43e/raw/79acfc95109ad02f76b9181b3516638286a267e7/_msfvenom

# Theme

# Powerlevel10k
zi pick'powerlevel10k.zsh-theme' atload'source $HOME/.zsh.d/theme/p10k.zsh'
zl romkatv/powerlevel10k
#zplugin ice depth=1; zplugin light romkatv/powerlevel10k

# Hub
zi as"program" cp"etc/hub.zsh_completion -> _hub" pick"bin/hub" atinit"zpcompinit" atpull'!git reset --hard' make"install prefix=~/bin"
zl github/hub

zt 0b as"command" from"gh-r";         zd junegunn/fzf-bin
zt 0b as"command" pick"bin/fzf-tmux"; zd junegunn/fzf
# Create and bind multiple widgets using fzf
zt 0a multisrc"shell/{completion,key-bindings}.zsh" \
        id-as"junegunn/fzf_completions" pick"/dev/null"
    zd junegunn/fzf

zt 0b has'git'
zl wfxr/forgit

zt 0b pick'autopair.zsh' nocompletions
zl hlissner/zsh-autopair

zt 0a blockf
zl zsh-users/zsh-completions

zt 0c atload'bindkey "^[[A" history-substring-search-up; bindkey "^[[B" history-substring-search-down'
zl zsh-users/zsh-history-substring-search

zt 0a atinit"zpcompinit; export NVM_LAZY_LOAD=true"
zl lukechilds/zsh-nvm

zt 0b
zl snippet OMZ::plugins/z/z.sh

zt 0b atinit"ZPLGM[COMPINIT_OPTS]='-i' zpcompinit; zpcdreplay"
zl zdharma/fast-syntax-highlighting

zt 0b compile'{src/*.zsh,src/strategies/*}' atload'_zsh_autosuggest_start' 
zl zsh-users/zsh-autosuggestions

zt 0c id-as'Cleanup' atinit'unset -f zt zl'
zl zdharma/null
