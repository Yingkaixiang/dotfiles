# 自动生成 .gitignore
function gi() {
  curl -L -s https://www.gitignore.io/api/$1 | >> .gitignore 
}