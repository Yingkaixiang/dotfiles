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