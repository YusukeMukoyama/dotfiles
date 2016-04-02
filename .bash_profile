if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

##
# Your previous /Users/y-mukoyama/.bash_profile file was backed up as /Users/y-mukoyama/.bash_profile.macports-saved_2016-01-08_at_12:56:37
##

# MacPorts Installer addition on 2016-01-08_at_12:56:37: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

