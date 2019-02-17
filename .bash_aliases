# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# -- command functions
function xygrep(){
  if [[ $# -gt 1 ]] ; then
    flags="-Hn $1" 
    val=$2
  else
    flags="-Hn"
    val=$1
  fi
  /usr/bin/find . \( -type d -regex '.*/\...*' -prune \) -o ! -type d ! -type l ! -name "*~" ! -name "*.bak" ! -name "*.log" ! -name "*.pyc" ! -name "*.jpg" ! -name "*.gif" ! -name "*.png" ! -name "*.min.*" ! -name "*.svg" -exec grep $flags "$val" {} \;
}
function lookup(){
  grep -i "$1" ~/mfiles/phones
}
function word(){
  grep -i "$1" /usr/share/dict/words
}

# -- command aliases
alias purge='/bin/rm -f .*~ *~ \#*'
alias tdel='/bin/rm -f *.dvi *.log figs.tmp refs.tmp'
alias prot='chmod go-rwx'
alias noprot='chmod go+r'
alias lo='logout'
alias rm='/bin/rm -i' 			# some protection
alias cp='/bin/cp -i'
alias mv='/bin/mv -i'
alias rmrf='/bin/rm -rf'
# -- screen commands
alias normal='echo "[0m"'
alias bold='echo "[1m"'
alias underline='echo "[4m"'
alias blink='echo "[5m"'
alias reverse='echo "[7m"'
alias cls='/usr/bin/clear'
alias clear='/usr/bin/clear'
alias ring='echo ""'
alias crtreset='echo "c"'
alias ansi='echo ""'

alias killbells='ps uaxww | grep mgolden | grep bells | grep -v grep | sed -e "s/^[^ ]* */kill /" | sed -e "s/  .*//" | sh'
