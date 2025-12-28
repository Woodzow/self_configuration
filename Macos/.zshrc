
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#配置homebrew相关镜像
  eval $(/opt/homebrew/bin/brew shellenv) #ckbrew
  export HOMEBREW_PIP_INDEX_URL=https://pypi.tuna.tsinghua.edu.cn/simple #ckbrew
  export HOMEBREW_API_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api  #ckbrew
  export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles #ckbrew
  export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"

# 配置系统默认py的环境变量
export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

# 配置zsh的高亮与代码补全插件
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#zsh只认识python3指令，为了方便直接指定python=python3
alias python='python3'
alias proxy_on='export http_proxy="http://127.0.0.1:7897" https_proxy="http://127.0.0.1:7897" export all_proxy="http://127.0.0.1:7897"'
alias proxy_off='unset http_proxy; unset https_proxy; unset all_proxy;'

alias nf="neofetch"

#创建文件夹并进入
mkcd(){
    mkdir -p "$1" && cd "$1"
}

#添加starship的加载配置
# ~/.zshrc
eval "$(starship init zsh)"

export TERM=xterm-256color


