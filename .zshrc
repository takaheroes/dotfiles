# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 環境変数
export LANG=ja_JP.UTF-8

# 補完機能を有効にする
#autoload -Uz compinit
#compinit

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
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# コマンド履歴
## コマンド履歴を保存するファイル名を設定する
HISTFILE=~/.zsh_history

## 履歴の数を設定する
HISTSIZE=100000
SAVEHIST=100000

## 重複したコマンドを履歴に残さないように設定する
setopt hist_ignore_all_dups

## 履歴ファイルを共有する
setopt share_history

## コマンド履歴を有効化する
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

## コマンド履歴関連のキーバインドを設定する
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
bindkey "^S" history-incremental-search-forward

## 過去の設定のコメントアウト
## Powerlevel10をインストールすると起動時にエラーが出るためコメントアウト
## stty -ixon #Ctrl Sを有効にするためデフォルトのCtrl Sで端末ストップを無効化する
## bindkey "^R" history-incremental-search-backward

# キーバインド
## Emacs風キーバインドにする
bindkey -e

# ディレクトリ移動
## ディレクトリ名でcdする
setopt auto_cd

## pushd関連の設定
### cd時に自動でpushdする
setopt auto_pushd

### 同じディレクトリをpushdしない
setopt PUSHD_IGNORE_DUPS

### pushdで保持する履歴の数を設定する
DIRSTACKSIZE=20

### dirsだけでdirs-vする
alias dirs='dirs -v'

# 色設定
## Ubuntuの場合
if uname -a | grep -sq "Ubuntu" ; then
  ## lsの色設定（GNU系：Linux）
  export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

  ## aliasの設定
  alias ls="ls --color=auto"

## Macの場合
elif [ "$(uname)" = "Darwin" ]; then
  ## lsの色設定（BSD系：Mac）
  export LSCOLORS=exfxcxdxbxegedabagacad
  export DISPLAY=:0

  ## aliasの設定
  alias ls="ls -G"

## Windows WSLの場合
elif [ "$(uname)" = "Linux" ]; then
  ## lsの色設定（GNU系：Linux）
  export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

  ## aliasの設定
  alias ls="ls --color=auto"

fi

## 補完候補一覧の色設定
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# beep を無効にする
setopt no_beep

#ターミナルのタイトル設定
#export PS1="%F{cyan}[%n@%m] %c %# %f"
export PS1="%F{cyan}[%n@%m]%f %F{magenta}(%D %*)%f %F{green}>%4c%f"$'\n'"%# "


# JAVAの設定
## Macの場合
if [ "$(uname)" = "Darwin" ]; then
  #export JAVA_HOME=`/usr/libexec/java_home -v "17.0.10"`
  export JAVA_HOME=`/usr/libexec/java_home -v "14.0.2"`
fi

# nodebrewの設定
## Macの場合
if [ "$(uname)" = "Darwin" ]; then
export NODEBREW_ROOT=/opt/homebrew/var/nodebrew
fi

# PATHの設定
## Windows WSLの場合
if [ "$(uname)" = "Linux" ]; then
  export PATH=$PATH:~/.local/bin
## Macの場合
elif [ "$(uname)" = "Darwin" ]; then
  export PATH=$PATH:~/Applications/apache-maven-3.8.8/bin:/opt/homebrew/bin:/usr/local/bin:/opt/homebrew/var/nodebrew/current/bin:$JAVA_HOME/bin:~/.local/bin
fi

# nvm
## Windows WSLの場合
if [ "$(uname)" = "Linux" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

# aliasの設定
## 共通設定
alias ll="ls -l"
alias la="ls -la"
## Macの場合
if [ "$(uname)" = "Darwin" ]; then
  alias coteditor="open -a 'CotEditor.app'"
fi

# 環境変数の設定
## pecoの表示を折り返す
export PECO_LAYOUT=bottom-up
## fzfのオプションを設定する
### 折り返し表示をする
export FZF_DEFAULT_OPTS="
--layout=reverse
--preview-window=wrap
"
export FZF_DEFAULT_COMMAND='fd'

# プロジェクト向け環境変数の設定
## JIP
# export AWS_REGION="ap-northeast-1"
# export ANTHROPIC_MODEL="arn:aws:bedrock:ap-northeast-1:843581809395:application-inference-profile/i4b9ynuycs41"
# export CLAUDE_CODE_USE_BEDROCK=1

# tmuxの設定
# powerlevel10kの設定より前に設定する必要がある
#if [[ -z "$TMUX" && -z "$VIM" && "$TERM_PROGRAM" != "vscode" && $- == *l* ]] ; then
#  tmux attach-session -t default || tmux new-session -s default
#fi

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

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

### End of Zinit's installer chunk

# zsh Theme Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# プラグイン「zsh-completions」の導入
## コマンド補完
zinit ice wait'0'; zinit light zsh-users/zsh-completions
autoload -Uz compinit && compinit

## 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## 補完候補を一覧表示したとき、Tabや矢印で選択できるようにする
zstyle ':completion:*:default' menu select=1

# プラグイン「zsh-syntax-highliting」の導入
zinit light zsh-users/zsh-syntax-highlighting

# プラグイン「zsh-autosuggestions」の導入
zinit light zsh-users/zsh-autosuggestions
#bindkey '^j' autosuggest-accept


# fzf関連の設定
## 過去のコマンド履歴を曖昧検索する
### 過去のコマンド履歴を曖昧検索する関数を定義する
function fzf-select-history() {
    BUFFER=$(\history -n -r 1 | fzf --query "$LBUFFER" --reverse)
    CURSOR=$#BUFFER
    zle reset-prompt
}
### 関数をウィジェットとして登録し、キーバインドを定義する
zle -N fzf-select-history
bindkey '^r' fzf-select-history

# peco関連の設定
## 過去のコマンド履歴を曖昧検索する
### 過去のコマンド履歴を曖昧検索する関数を定義する
#function peco-select-history() {
#  BUFFER=$(\history -n -r 1 | peco --query "$LBUFFER")
#  CURSOR=$#BUFFER
#  zle clear-screen
#}
### 関数をウィジェットとして登録し、キーバインドを定義する
#zle -N peco-select-history
#bindkey '^r' peco-select-history

## 過去のディレクトリ移動を曖昧検索する
### cdrを設定する
if [[ -n $(echo ${^fpath}/chpwd_recent_dirs(N)) && -n $(echo ${^fpath}/cdr(N)) ]]; then
    autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
    add-zsh-hook chpwd chpwd_recent_dirs
    zstyle ':completion:*' recent-dirs-insert both
    zstyle ':chpwd:*' recent-dirs-default true
    zstyle ':chpwd:*' recent-dirs-max 1000
    zstyle ':chpwd:*' recent-dirs-file "$HOME/.cache/chpwd-recent-dirs"
fi

### cdrから曖昧検索する関数を定義する
function fzf-cdr() {
  ## 変数定義
  local selected_dir

  ## Ubuntuの場合
  if uname -a | grep -sq "Ubuntu" ; then
    selected_dir="$(cdr -l | sed -e 's/^[0-9]\+ \+//' | fzf --prompt="cdr >" --wrap --query "$LBUFFER" --reverse)"

  # Macの場合
  elif [ "$(uname)" = "Darwin" ]; then
    selected_dir="$(cdr -l | sed -E 's/^[0-9]+ +//' | fzf --prompt="cdr >" --wrap --query "$LBUFFER" --reverse)"
    
  # Windows WSLの場合
  elif [ "$(uname)" = "Linux" ]; then
    selected_dir="$(cdr -l | sed -e 's/^[0-9]\+ \+//' | fzf --prompt="cdr >" --wrap --query "$LBUFFER" --reverse)"
  fi

  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
}
zle -N fzf-cdr
bindkey '^o' fzf-cdr

## カレントディレクトリを検索する。
fcd() {
  local dir
  dir=$(fd . --max-depth 1 --type d | fzf --preview 'ls -la {}' --reverse) && cd "$dir"
}

### cdrから曖昧検索する関数を定義する
#function peco-cdr () {
#  ## 変数定義
#  local selected_dir
#
#  ## Ubuntuの場合
#  if uname -a | grep -sq "Ubuntu" ; then
#    selected_dir="$(cdr -l | sed -e 's/^[0-9]\+ \+//' | peco --prompt="cdr >" --query "$LBUFFER")"
#
#  # Macの場合
#  elif [ "$(uname)" = "Darwin" ]; then
#    selected_dir="$(cdr -l | sed -E 's/^[0-9]+ +//' | peco --prompt="cdr >" --query "$LBUFFER")"
#    
#  # Windows WSLの場合
#  elif [ "$(uname)" = "Linux" ]; then
#    selected_dir="$(cdr -l | sed -e 's/^[0-9]\+ \+//' | peco --prompt="cdr >" --query "$LBUFFER")"
#  fi
#
#  if [ -n "$selected_dir" ]; then
#    BUFFER="cd ${selected_dir}"
#    zle accept-line
#  fi
#}
### 関数をウィジェットとして登録し、キーバインドを定義する
#zle -N peco-cdr
#bindkey '^o' peco-cdr

# zinitインストール時の自動設定
# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
