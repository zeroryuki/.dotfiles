alias CWD="$(pwd)"
alias rs='reset'
alias cari='grep -rnw './' -e '$1''
alias checksda='mount | grep sda'
alias emu="$ANDROID_HOME/tools/emulator"
alias pumpkin='sudo QT_X11_NO_MITSHM=1 wifi-pumpkin'
alias pdf='epdfview'
alias gos='googler -n 10 -t d10'
alias yt='googler -w youtube.com --url-handler mpv $argv'
alias so='googler -w stackoverflow.com'
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
alias ss='searchsploit'
alias ssx='searchsploit -x'
alias ssp="python -m http.server"
alias vpon='systemctl start openvpn-client@zero.service'
alias vpof='systemctl stop openvpn-client@zero.service'
alias vpr='systemctl restart openvpn-client@zero.service'
alias vpst='systemctl status openvpn-client@zero.service'
alias revsh='revshell $(ifconfig tun0 | grep "10.10" | cut -d " " -f 10) 31337'

###############################
#	  COLORLS
##############################
alias lc='colorls -lA --sd --report'

##############################
#	TASKWARRIOR
##############################
alias idea='task add +idea'
alias ti='task idea'
alias tadd='task add'
alias tp='task process'

alias burp="java -noverify -javaagent:/home/z3r0/CTF/BurpSuite/pro/burploader.jar -jar /home/z3r0/CTF/BurpSuite/pro/burpsuite_pro_v2020.8.jar"
