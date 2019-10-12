alias rs='reset'
alias cari='grep -rnw './' -e '$1''
alias checksda='mount | grep sda'
alias emu="$ANDROID_HOME/tools/emulator"
alias pumpkin='sudo QT_X11_NO_MITSHM=1 wifi-pumpkin'
alias pdf='epdfview'
alias yt='googler -w youtube.com --url-handler mpv $argv'
alias so='googler -w stackoverflow.com (xsel)'
alias news='googler -N --url-handler reader'
alias zconf='nano ~/.zshrc'
alias zalias='nano $ZCONF[ALIAS]'
alias zup='source ~/.zshrc'
alias zpg='nano $ZCONF[PLUGIN]'
alias ztheme='nano $ZCONF[THEME]'
alias zenv='nano $ZCONF[ENV]'
alias gh='cd $GH_HOME/'
alias emo='emojify'
alias pwgen='pwgen -cnys 60 1'
alias icat='kitty +kitten icat'
###############################
#	  COLORLS
##############################
alias lc='colorls -A --sd'

##############################
#	TASKWARRIOR
##############################
alias idea='task add +idea'
alias ti='task idea'
alias tadd='task add'
alias tp='task process'

