#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
neofetch
HISTSIZE=1500

export MANPAGER='nvim +Man!'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi



##################################################
# Color chart					 #
##################################################

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

PS1='\[\033]0;\w\007\]\[\e[35;1m\]\u\[\e[0m\]\[\e[32m\]@\h\[\e[34m\]\w \[\e[33m\]\$ \[\e[0m\]'	# purple, green, blue prompt w/default black & dir title

export BLOCKSIZE=K				# set blocksize size
export BROWSER='brave'			# set default browser
export CDDIR="$HOME"			# for use with the function 'cd' and the alias 'cdd'
export EDITOR='nvim'

##-----------------------------------------------------
# Inclusão das linhas para o PyEnv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/thiago/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/thiago/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## Aliases para inicializar o repositório dotfiles do Git com 'iniciar_git'
alias iniciar_git="ssh-agent bash"
alias git_thiago="eval 'ssh-agent -s' && ssh-add ~/.ssh/thiago && ssh -T git@github.com"
alias tcc="cd ~/Documents/TCC_USP/"
