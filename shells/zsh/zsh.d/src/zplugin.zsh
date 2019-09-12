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
z()  { [ -z $2 ] && zplugin light "${@}" || zplugin "${@}"; } # zplugin

zt 0a
z snippet OMZ::lib/clipboard.zsh

for plg1 (
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
z snippet OMZ::plugins/$plg1/$plg1.plugin.zsh
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
z snippet OMZ::plugins/$plg2/$plg2.plugin.zsh
}

# Theme
# Spaceship
#zi pick'spaceship.zsh' compile'{lib/*,sections/*,tests/*.zsh}' atload'source $HOME/.zsh.d/theme/default'
#z denysdovhan/spaceship-prompt

# Powerlevel10k
zi pick'powerlevel10k.zsh-theme' atload'source $HOME/.zsh.d/theme/p10k.zsh'
z romkatv/powerlevel10k

# Hub
zi as"command" cp"hub.zsh_completion -> _hub" atinit"zpcompinit" atpull'!git reset --hard'
z snippet https://github.com/github/hub/blob/master/etc/hub.zsh_completion

zt 0b has'git'
z wfxr/forgit

zt 0b pick'autopair.zsh' nocompletions
z hlissner/zsh-autopair

zt 0a blockf atpull'zplugin creinstall -q .'
z zsh-users/zsh-completions

zt 0c atload'bindkey "^[[A" history-substring-search-up; bindkey "^[[B" history-substring-search-down'
z zsh-users/zsh-history-substring-search

zt 0a atinit"zpcompinit; export NVM_LAZY_LOAD=true"
z lukechilds/zsh-nvm

zt 0b
z snippet OMZ::plugins/z/z.sh

zt 0b atinit"ZPLGM[COMPINIT_OPTS]='-i' zpcompinit; zpcdreplay"
z zdharma/fast-syntax-highlighting

zt 0b compile'{src/*.zsh,src/strategies/*}' atload'_zsh_autosuggest_start' 
z zsh-users/zsh-autosuggestions

zt 0c id-as'Cleanup' atinit'unset -f zt z'
z zdharma/null
