function cd
  builtin cd $argv; and ls
end

function mkcd
  mkdir $argv
  cd $argv
end

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

function cpwd
  pwd | pbcopy
end

function cdpwd
  cd (pbpaste)
end

function samfind
  find . -name $argv
end

function yabai-restart
  brew services restart yabai
end

function nvm
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

export PATH="/home/samkim/.local/share/solana/install/active_release/bin:$PATH"
export PATH="/home/samkim/.local/scripts:$PATH"
export PATH="/usr/lib/emsdk:$PATH"
export PATH="/usr/emsdk/node/14.18.2_64bit/bin:$PATH"
export PATH="/usr/lib/emsdk/upstream/emscripten:$PATH"
export PATH="/home/samkim/.cargo/bin:$PATH"

export MONOREPO="/home/samkim/Projects/token-2022/solana"
export TOKEN="/home/samkim/Projects/token-2022/solana-program-library/token"

set -g theme_color_scheme gruvbox
