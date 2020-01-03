# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git autojump zsh-autosuggestions zsh-syntax-highlighting web-search)

# 自动生成 .gitignore 文件
gi() {
  if [[ $1 == vue ]] {
    curl -L -s https://raw.githubusercontent.com/Yingkaixiang/dotfiles/master/gitignore/vue/.gitignore | >> .gitignore
  }
}

# 自动补全本地 host 配置
host() {
  curl -L -s https://raw.githubusercontent.com/Yingkaixiang/dotfiles/master/hosts | >> /ect/hosts
}