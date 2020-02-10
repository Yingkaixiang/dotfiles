# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git autojump zsh-autosuggestions zsh-syntax-highlighting web-search)

# 自动生成 .gitignore 文件
gi() {
  if [[ $1 == vue ]] {
    curl -L -s https://raw.githubusercontent.com/Yingkaixiang/dotfiles/master/gitignore/vue/.gitignore | >> .gitignore
  } else {
    curl -L -s https://www.gitignore.io/api/$1 | >> .gitignore
  }
}

# 自动补全本地 host 配置
host() {
  curl -L -s https://raw.githubusercontent.com/Yingkaixiang/dotfiles/master/hosts | >> /ect/hosts
}

# 设置 homebrew bottle 镜像源
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles

# 设置 nvm 镜像源
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node/

# 快速启动本地服务
alias http-server="npx http-server -c-1"