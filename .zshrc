# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="random"
ZSH_THEME="itchy"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z brew)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/opt/X11/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export LANG=en_US.utf-8
export TERM=xterm-256color
export PATH="$PATH:$HOME/.rvm/bin:$HOME/bin" # Add RVM to PATH for scripting
export MAVEN_OPTS="-Xmx4096m -XX:MaxPermSize=128m"

export DOCKER_HOST=tcp://docker.host:2376
export DOCKER_TLS_VERIFY=1
alias docker='docker --tlsverify'

export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD # for stock ls
export LS_COLORS='no=00;38;5;244:rs=0:di=00;38;5;33:ln=00;38;5;37:mh=00:pi=48;5;230;38;5;136;01:so=48;5;230;38;5;136;01:do=48;5;230;38;5;136;01:bd=48;5;230;38;5;244;01:cd=48;5;230;38;5;244;01:or=48;5;235;38;5;160:su=48;5;160;38;5;230:sg=48;5;136;38;5;230:ca=30;41:tw=48;5;64;38;5;230:ow=48;5;235;38;5;33:st=48;5;33;38;5;230:ex=00;38;5;64:*.tar=00;38;5;61:*.tgz=00;38;5;61:*.arj=00;38;5;61:*.taz=00;38;5;61:*.lzh=00;38;5;61:*.lzma=00;38;5;61:*.tlz=00;38;5;61:*.txz=00;38;5;61:*.zip=00;38;5;61:*.z=00;38;5;61:*.Z=00;38;5;61:*.dz=00;38;5;61:*.gz=00;38;5;61:*.lz=00;38;5;61:*.xz=00;38;5;61:*.bz2=00;38;5;61:*.bz=00;38;5;61:*.tbz=00;38;5;61:*.tbz2=00;38;5;61:*.tz=00;38;5;61:*.deb=00;38;5;61:*.rpm=00;38;5;61:*.jar=00;38;5;61:*.rar=00;38;5;61:*.ace=00;38;5;61:*.zoo=00;38;5;61:*.cpio=00;38;5;61:*.7z=00;38;5;61:*.rz=00;38;5;61:*.apk=00;38;5;61:*.gem=00;38;5;61:*.jpg=00;38;5;136:*.JPG=00;38;5;136:*.jpeg=00;38;5;136:*.gif=00;38;5;136:*.bmp=00;38;5;136:*.pbm=00;38;5;136:*.pgm=00;38;5;136:*.ppm=00;38;5;136:*.tga=00;38;5;136:*.xbm=00;38;5;136:*.xpm=00;38;5;136:*.tif=00;38;5;136:*.tiff=00;38;5;136:*.png=00;38;5;136:*.PNG=00;38;5;136:*.svg=00;38;5;136:*.svgz=00;38;5;136:*.mng=00;38;5;136:*.pcx=00;38;5;136:*.dl=00;38;5;136:*.xcf=00;38;5;136:*.xwd=00;38;5;136:*.yuv=00;38;5;136:*.cgm=00;38;5;136:*.emf=00;38;5;136:*.eps=00;38;5;136:*.CR2=00;38;5;136:*.ico=00;38;5;136:*.tex=00;38;5;245:*.rdf=00;38;5;245:*.owl=00;38;5;245:*.n3=00;38;5;245:*.ttl=00;38;5;245:*.nt=00;38;5;245:*.torrent=00;38;5;245:*.xml=00;38;5;245:*Makefile=00;38;5;245:*Rakefile=00;38;5;245:*build.xml=00;38;5;245:*rc=00;38;5;245:*1=00;38;5;245:*.nfo=00;38;5;245:*README=00;38;5;245:*README.txt=00;38;5;245:*readme.txt=00;38;5;245:*.md=00;38;5;245:*README.markdown=00;38;5;245:*.ini=00;38;5;245:*.yml=00;38;5;245:*.cfg=00;38;5;245:*.conf=00;38;5;245:*.c=00;38;5;245:*.cpp=00;38;5;245:*.cc=00;38;5;245:*.sqlite=00;38;5;245:*.log=00;38;5;240:*.bak=00;38;5;240:*.aux=00;38;5;240:*.lof=00;38;5;240:*.lol=00;38;5;240:*.lot=00;38;5;240:*.out=00;38;5;240:*.toc=00;38;5;240:*.bbl=00;38;5;240:*.blg=00;38;5;240:*~=00;38;5;240:*#=00;38;5;240:*.part=00;38;5;240:*.incomplete=00;38;5;240:*.swp=00;38;5;240:*.tmp=00;38;5;240:*.temp=00;38;5;240:*.o=00;38;5;240:*.pyc=00;38;5;240:*.class=00;38;5;240:*.cache=00;38;5;240:*.aac=00;38;5;166:*.au=00;38;5;166:*.flac=00;38;5;166:*.mid=00;38;5;166:*.midi=00;38;5;166:*.mka=00;38;5;166:*.mp3=00;38;5;166:*.mpc=00;38;5;166:*.ogg=00;38;5;166:*.ra=00;38;5;166:*.wav=00;38;5;166:*.m4a=00;38;5;166:*.axa=00;38;5;166:*.oga=00;38;5;166:*.spx=00;38;5;166:*.xspf=00;38;5;166:*.mov=00;38;5;166:*.mpg=00;38;5;166:*.mpeg=00;38;5;166:*.m2v=00;38;5;166:*.mkv=00;38;5;166:*.ogm=00;38;5;166:*.mp4=00;38;5;166:*.m4v=00;38;5;166:*.mp4v=00;38;5;166:*.vob=00;38;5;166:*.qt=00;38;5;166:*.nuv=00;38;5;166:*.wmv=00;38;5;166:*.asf=00;38;5;166:*.rm=00;38;5;166:*.rmvb=00;38;5;166:*.flc=00;38;5;166:*.avi=00;38;5;166:*.fli=00;38;5;166:*.flv=00;38;5;166:*.gl=00;38;5;166:*.m2ts=00;38;5;166:*.divx=00;38;5;166:*.webm=00;38;5;166:*.axv=00;38;5;166:*.anx=00;38;5;166:*.ogv=00;38;5;166:*.ogx=00;38;5;166:'

# use this only if coreutils is installed
# alias ls='gls --color=auto'

# Commented one is for Apple provided java
# export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
export PATH="$JAVA_HOME/bin:$PATH"

export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

export EDITOR=vim
