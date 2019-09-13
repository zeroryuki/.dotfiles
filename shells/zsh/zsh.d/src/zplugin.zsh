if [ ! -d "${HOME}/.zplugin" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
fi

# Load `zplugin`
source "${ZPLGM[BIN_DIR]}/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# Functions to make configuration less verbose
zt() { zplugin ice wait"${1}" lucid               "${@:2}"; } # Turbo
zi() { zplugin ice lucid                            "${@}"; } # Regular Ice
zl()  { [ -z $2 ] && zplugin light "${@}" || zplugin "${@}"; } # zplugin

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

# Theme
# Spaceship
#zi pick'spaceship.zsh' compile'{lib/*,sections/*,tests/*.zsh}' atload'source $HOME/.zsh.d/theme/default'
#z denysdovhan/spaceship-prompt

# Powerlevel10k
zi pick'powerlevel10k.zsh-theme' atload'source $HOME/.zsh.d/theme/p10k.zsh'
zl romkatv/powerlevel10k

# Hub
zi as"command" cp"hub.zsh_completion -> _hub" atinit"zpcompinit" atpull'!git reset --hard'
zl snippet https://github.com/github/hub/blob/master/etc/hub.zsh_completion

zt 0b has'git'
zl wfxr/forgit

zt 0b pick'autopair.zsh' nocompletions
zl hlissner/zsh-autopair

zt 0a blockf atpull'zplugin creinstall -q .'
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
