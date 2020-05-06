export PATH=${PATH}:/Users/akash/Google\ Drive/Programming/android:
export PATH=${PATH}:/Users/akash/.local/bin
export EDITOR=vim


# added by Anaconda3 5.0.1 installer
# export PATH="/anaconda3/bin:$PATH"  # commented out by conda initialize

export FONTCONFIG_PATH=/opt/X11/lib/X11/fontconfig
# added by Anaconda3 5.0.1 installer
# export PATH="/Users/akash/anaconda3/bin:$PATH"  # commented out by conda initialize
export PATH=$PATH:/Applications/android-platform-tools/
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/

### added by akash
mkcd(){
mkdir -p "$1" && cd "$1"
}
copy(){
"$1" | pbcopy
}

cds(){
	cd "$1"
	bash setup.sh
}

re-source(){
	source ~/.zshrc
}

sql_start(){
	pg_ctl -D /usr/local/var/postgres start
}

sql_stop(){
	pg_ctl -D /usr/local/var/postgres stop
}
###

# source activate base
export FASTAI="--project=fastai-209916"

export PATH=~/bin:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PGHOST=localhost

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH="/usr/local/opt/libarchive/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/akash/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/akash/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/akash/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/akash/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE="en_US.UTF-8"

# Add Gem paths (originally to fix Jekyll)
export PATH="$PATH:/usr/local/lib/ruby/gems/2.6.0/bin"
export PATH="$PATH:/Users/akash/.gem/ruby/2.6.0/bin"
export PATH="$PATH:/usr/local/Cellar/ruby/2.6.3/lib/ruby/gems/2.6.0/"
# export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/jep"
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/Users/akash/anaconda3/lib/python3.7/site-packages/jep"

export PATH="$HOME/.poetry/bin:$PATH"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/akash/Downloads/Applications/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/akash/Downloads/Applications/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/akash/Downloads/Applications/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/akash/Downloads/Applications/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

vo () {
        fzf > temp_file
        fname=$(<temp_file)
        rm temp_file
        vim $fname
}

marco (){
        cwd=$(pwd)
}

polo (){
        cd $cwd
}

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

harvard (){
ssh apalrecha@login.rc.fas.harvard.edu
}
alias config='/usr/bin/git --git-dir=/Users/akash/.cfg/ --work-tree=/Users/akash'
