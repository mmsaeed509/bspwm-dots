# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to guiscrcpy
# export XDG_DESKTOP_DIR="~/.config/guiscrcpy/"
export EDITOR=nvim
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# ZSH_THEME="spaceship"
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="archcraft"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME="spaceship"
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# On-demand rehash
zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

add-zsh-hook -Uz precmd rehash_precmd

# omz
alias zshconfig="geany ~/.zshrc"
alias ohmyzsh="thunar ~/.oh-my-zsh"

# ls
alias ls='lsd'
alias l='lsd -lh'
alias ll='lsd -lah'
alias la='lsd -A'
alias lm='lsd -m'
alias lr='lsd -R'
alias lg='lsd -l --group-directories-first'

# git
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'
alias cb='git checkout'

# ------------ Pacman -------------------------

alias sync="sudo pacman -Syyy"
alias install="sudo pacman -S"
alias update="sudo pacman -Syyu"
alias search="sudo pacman -Ss"
alias search-local="sudo pacman -Qs"
alias pkg-info="sudo pacman -Qi"
alias local-install="sudo pacman -U"
alias clr-cache="sudo pacman -Scc"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias remove="sudo pacman -R"
alias autoremove="sudo pacman -Rns"

# ------------ Pacman -------------------------

alias M="ncmpcpp"
alias MA="cd ~/.ncmpcpp/scripts/ && ./ncmpcpp-art"
alias youtube="ytfzf -t"
alias eDEX-UI="eDEX-UI-Linux-x86_64.AppImage"


## ------------ COLORS ------------ ##

# Reset #
RESET_COLOR='\033[0m' # Text Reset

# Regular Colors #
Black='\033[0;30m'  Red='\033[0;31m'     Green='\033[0;32m'  Yellow='\033[0;33m'
Blue='\033[0;34m'   Purple='\033[0;35m'  Cyan='\033[0;36m'   White='\033[0;37m'

# Bold #
BBlack='\033[1;30m' BRed='\033[1;31m'    BGreen='\033[1;32m' BYellow='\033[1;33m'
BBlue='\033[1;34m'  BPurple='\033[1;35m' BCyan='\033[1;36m'  BWhite='\033[1;37m'

# Underline #
UBlack='\033[4;30m' URed='\033[4;31m'    UGreen='\033[4;32m' UYellow='\033[4;33m'
UBlue='\033[4;34m'  UPurple='\033[4;35m' UCyan='\033[4;36m'  UWhite='\033[4;37m'

# Background #
On_Black='\033[40m' On_Red='\033[41m'    On_Green='\033[42m' On_Yellow='\033[43m'
On_Blue='\033[44m'  On_Purple='\033[45m' On_Cyan='\033[46m'  On_White='\033[47m'

# High Intensity #
IBlack='\033[0;90m' IRed='\033[0;91m' IGreen='\033[0;92m' IYellow='\033[0;93m'      
IBlue='\033[0;94m' IPurple='\033[0;95m' ICyan='\033[0;96m' IWhite='\033[0;97m'      

# Bold High Intensity #
BIBlack='\033[1;90m' BIRed='\033[1;91m' BIGreen='\033[1;92m' BIYellow='\033[1;93m'
BIBlue='\033[1;94m' BIPurple='\033[1;95m' BICyan='\033[1;96m' BIWhite='\033[1;97m'

# High Intensity backgrounds #
On_IBlack='\033[0;100m' On_IRed='\033[0;101m' On_IGreen='\033[0;102m' On_IYellow='\033[0;103m'
On_IBlue='\033[0;104m' On_IPurple='\033[0;105m' On_ICyan='\033[0;106m' On_IWhite='\033[0;107m'

## ------------ COLORS ------------ ##
                                   
echo -e ${Purple} "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━┓"
echo -e ${Purple} "┃                                                                                ┃ ${Cyan}  ${BBlue}Exodia Fetch ${Purple}┃  ${BGreen}  ${BYellow}  ${BRed}  ${Purple}┃"${RESET_COLOR}
echo -e ${Purple} "┃  ██╗ ██╗     ███████╗██╗  ██╗ ██████╗ ██████╗ ██╗ █████╗      ██████╗ ███████╗ ┣━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━┫"${RESET_COLOR}
echo -e ${Purple} "┃ ████████╗    ██╔════╝╚██╗██╔╝██╔═══██╗██╔══██╗██║██╔══██╗    ██╔═══██╗██╔════╝ ┃                             ┃"${RESET_COLOR}
echo -e ${Purple} "┃ ╚██╔═██╔╝    █████╗   ╚███╔╝ ██║   ██║██║  ██║██║███████║    ██║   ██║███████╗ ┃                             ┃"${RESET_COLOR}
echo -e ${Purple} "┃ ████████╗    ██╔══╝   ██╔██╗ ██║   ██║██║  ██║██║██╔══██║    ██║   ██║╚════██║ ┃ ${Cyan}  ${Blue}Developed by : ${BIGreen}00xWolf   ${Purple}┃"${RESET_COLOR}
echo -e ${Purple} "┃ ╚██╔═██╔╝    ███████╗██╔╝ ██╗╚██████╔╝██████╔╝██║██║  ██║    ╚██████╔╝███████║ ┃ ${Cyan}  ${Blue}GitHub : ${BIGreen}@mmsaeed509     ${Purple}┃"${RESET_COLOR}
echo -e ${Purple} "┃  ╚═╝ ╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═╝     ╚═════╝ ╚══════╝ ┃ ${Cyan}﫥 ${BIGreen}Cyb3rTh1eveZ Team        ${Purple}┃"${RESET_COLOR}
echo -e ${Purple} "┃                                                                                ┃                             ┃"${RESET_COLOR}
echo -e ${Purple} "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"${RESET_COLOR}
echo -e ""

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# 
# echo -e ${Purple} "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━┓"
# echo -e ${Purple} "┃                                                                             ┃ ${Cyan}  ${BBlue}Exodia Fetch ${Purple}┃  ${BGreen}  ${BYellow}  ${BRed}  ${Purple}┃"${RESET_COLOR}
# echo -e ${Purple} "┃  ██╗ ██╗      ██████╗  ██████╗ ██╗  ██╗██╗    ██╗ ██████╗ ██╗     ███████╗  ┣━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━┫"${RESET_COLOR}
# echo -e ${Purple} "┃ ████████╗    ██╔═████╗██╔═████╗╚██╗██╔╝██║    ██║██╔═══██╗██║     ██╔════╝  ┃                             ┃"${RESET_COLOR}
# echo -e ${Purple} "┃ ╚██╔═██╔╝    ██║██╔██║██║██╔██║ ╚███╔╝ ██║ █╗ ██║██║   ██║██║     █████╗    ┃                             ┃"${RESET_COLOR}
# echo -e ${Purple} "┃ ████████╗    ████╔╝██║████╔╝██║ ██╔██╗ ██║███╗██║██║   ██║██║     ██╔══╝    ┃ ${Cyan}  ${Blue}Developed by : ${BIGreen}00xWolf   ${Purple}┃"${RESET_COLOR}
# echo -e ${Purple} "┃ ╚██╔═██╔╝    ╚██████╔╝╚██████╔╝██╔╝ ██╗╚███╔███╔╝╚██████╔╝███████╗██║       ┃ ${Cyan}  ${Blue}GitHub : ${BIGreen}@mmsaeed509     ${Purple}┃"${RESET_COLOR}
# echo -e ${Purple} "┃  ╚═╝ ╚═╝      ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚══╝╚══╝  ╚═════╝ ╚══════╝╚═╝       ┃ ${Cyan}﫥 ${BIGreen}Cyb3rTh1eveZ Team        ${Purple}┃"${RESET_COLOR}
# echo -e ${Purple} "┃                                                                             ┃                             ┃"${RESET_COLOR}
# echo -e ${Purple} "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"${RESET_COLOR}
# echo -e ""
# 
# 
# cat <<'EOF'
# ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
# ┃  ██╗ ██╗      ██████╗  ██████╗ ██╗  ██╗██╗    ██╗ ██████╗ ██╗     ███████╗  ┃                             ┃
# ┃ ████████╗    ██╔═████╗██╔═████╗╚██╗██╔╝██║    ██║██╔═══██╗██║     ██╔════╝  ┃    Developed by : 00xWolf  ┃
# ┃ ╚██╔═██╔╝    ██║██╔██║██║██╔██║ ╚███╔╝ ██║ █╗ ██║██║   ██║██║     █████╗    ┃    GitHub : @mmsaeed509    ┃
# ┃ ████████╗    ████╔╝██║████╔╝██║ ██╔██╗ ██║███╗██║██║   ██║██║     ██╔══╝    ┃                             ┃
# ┃ ╚██╔═██╔╝    ╚██████╔╝╚██████╔╝██╔╝ ██╗╚███╔███╔╝╚██████╔╝███████╗██║       ┃  﫥  Cyb3rTh1eveZ Team      ┃
# ┃  ╚═╝ ╚═╝      ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚══╝╚══╝  ╚═════╝ ╚══════╝╚═╝       ┃                             ┃
# ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

# EOF

# exodiafetch