if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

hostname=`hostname`
localname=~/.bash_profile_$hostname
if [ -f $localname ]; then
    . $localname
fi
unset localname
