export GITHUB_TOKEN="2a4f8d07cbfcfc65e49615d010c0875dd6f70945"
export GIT_TERMINAL_PROMPT=1

export LS_COLORS="$(vivid generate molokai)"
# PATH
export PATH="$HOME/Projects/myrepo/dynamic-colors/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$GOPATH/bin"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/home/z3r0/perl5/bin${PATH:+:${PATH}}"

# DIR
export GH_HOME="$HOME/Personal/Projects/github-clone"
export XDG_DATA_HOME="$HOME/.config"
export ANDROID_HOME="/opt/android-sdk"
export GOPATH="$HOME/go"
export TASKRC="$HOME/.config/task/taskrc"
export PERL5LIB="/home/z3r0/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
export PERL_LOCAL_LIB_ROOT="/home/z3r0/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
export PERL_MB_OPT="--install_base \"/home/z3r0/perl5\""
export PERL_MM_OPT="INSTALL_BASE=/home/z3r0/perl5"
export PROJ="$HOME/Personal/Projects/myrepo/"

export PAGER=bat
export GTAGSLABEL=pygments
export BAT_THEME="1337"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_CTRL_T_OPTS="--preview '(bat {} || tree -C {}) 2> /dev/null | head -200'"

# HASH
declare -A ZCONF
ZCONF[ALIAS]="${HOME}/.zsh.d/src/aliases.zsh"
ZCONF[PLUGIN]="${HOME}/.zsh.d/src/zplugin.zsh"
ZCONF[THEME]="${HOME}/.zsh.d/theme/p10k.zsh"
ZCONF[ENV]="${HOME}/.zsh.d/src/env.zsh"
