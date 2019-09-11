export GITHUB_TOKEN=""
export GH_HOME="$HOME/Personal/Projects/github-clone"
export XDG_DATA_HOME="$HOME/.config"
export GIT_TERMINAL_PROMPT=1

export LS_COLORS="$(vivid generate molokai)"
export PATH="$HOME/Projects/myrepo/dynamic-colors/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export ANDROID_HOME="/opt/android-sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PERLBREW_ROOT="/usr/lib/perl5/perlbrew"

export PAGER=bat
export TASKRC="$HOME/.config/task/taskrc"
export GTAGSLABEL=pygments
export BAT_THEME="1337"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_CTRL_T_OPTS="--preview '(bat {} || tree -C {}) 2> /dev/null | head -200'"

PATH="/home/z3r0/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/z3r0/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/z3r0/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/z3r0/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/z3r0/perl5"; export PERL_MM_OPT;

source $HOME/Personal/Projects/myrepo/dynamic-colors/completions/dynamic-colors.zsh
source $(dirname $(gem which colorls))/tab_complete.sh
source $HOME/.fzf/shell/key-bindings.zsh
source $HOME/.fzf/shell/completion.zsh
for file in $HOME/.zsh.d/src/fzf/*; do
    source "$file"
done

# Proj dir
export PROJ="$HOME/Personal/Projects/myrepo/"
