
# PATHの設定
eval "$(/opt/homebrew/bin/brew shellenv)"

# tmuxの設定
if [[ -z "$TMUX" ]]; then
  tmux attach-session -t default || tmux new-session -s default
fi

# Setting PATH for Python 3.10
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH
