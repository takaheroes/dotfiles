# 環境変数
export LANG=ja_JP.UTF-8

# 補完機能を有効にする
autoload -Uz compinit
compinit

# 色を使用出来るようにする
autoload -Uz colors
colors

# プロンプトの設定
#case ${UID} in
#0)
#    PROMPT="%B%{[31m%}%/#%{[m%}%b "
#    PROMPT2="%B%{[31m%}%_#%{[m%}%b "
#    SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
#    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
#        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
#    ;;
#*)
#    PROMPT="%{[31m%}%/%%%{[m%} "
#    PROMPT2="%{[31m%}%_%%%{[m%} "
#    SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
#    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
#        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
#    ;;
#esac

# ターミナルのタイトルの設定
#case "${TERM}" in
#*)
#    precmd() {
#        echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
#    }
#    ;;
#esac

# タブ補完時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## コマンド履歴の設定 --------------------------------
# 履歴ファイルを設定する
HISTFILE=~/.zsh_history

# 履歴の数を設定する
HISTSIZE=1000000
SAVEHIST=1000000

# 同じコマンドを履歴に残さない
setopt hist_ignore_all_dups

# 履歴ファイルを共有する
setopt share_history

# コマンド履歴の有効化
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
bindkey "\\ep" history-beginning-search-backward-end
bindkey "\\en" history-beginning-search-forward-end

# コマンド履歴の検索
stty -ixon #Ctrl Sを有効にするためデフォルトのCtrl Sで端末ストップを無効化する
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward
## -----------------------------------------------

# emacs風キーバインドにする
bindkey -e

# ディレクトリ名でcdする
setopt auto_cd

# lsのカラー設定
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
alias ls="ls -G"
alias gls="gls --color"

# 補完候補一覧をカラー表示する
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# cd時に自動でpushdする
setopt auto_pushd

# 同じディレクトリをpushdしない
setopt PUSHD_IGNORE_DUPS

# pushdで保持する履歴は20個
DIRSTACKSIZE=20

# dirsだけでdirs-vする
alias dirs='dirs -v'


# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# beep を無効にする
setopt no_beep

# 全履歴を一覧表示する
function history-all { history -E 1 }

#ターミナルのタイトル設定
#export PS1="%F{cyan}[%n@%m] %c %# %f"
export PS1="%F{cyan}[%n@%m]%f %F{magenta}(%D %*)%f %F{green}>%4c%f"$'\n'"%# "

# PATHに/usr/local/binを追加する
export PATH=/usr/local/bin:$PATH

export PATH=$PATH:~/Applications/apache-maven-3.8.8/bin:/opt/homebrew/bin
export PATH=/opt/homebrew/var/nodebrew/current/bin:$PATH
export NODEBREW_ROOT=/opt/homebrew/var/nodebrew
#export JAVA_HOME=`/usr/libexec/java_home -v "17.0.10"`
export JAVA_HOME=`/usr/libexec/java_home -v "14.0.2"`
export PATH=$JAVA_HOME/bin:$PATH


# ------------------------------------------------
# zplugの設定
# ------------------------------------------------
# パスの設定
#export ZPLUG_HOME=/usr/local/opt/zplug
# 初期化処理をする
#source $ZPLUG_HOME/init.zsh

# zsh-history-substring-searchの設定
#zplug "zsh-users/zsh-history-substring-search"

# enhanceの設定
#zplug "b4b4r07/enhancd", use:init.sh

# Install plugins if there are plugins that have not been installed
#if ! zplug check --verbose; then
#    printf "Install? [y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
#fi

# Then, source plugins and add commands to $PATH
#zplug load --verbose

#
# キーバインド設定
#
#bindkey -M emacs '^P' history-substring-search-up
#bindkey -M emacs '^N' history-substring-search-down
