
function lpush() {
  git add --all :/
  git commit -a -m "$1"
  git push
}

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
PS1="\n\[\e[36;1m\](\[\e[37;1m\]\u @ \h\[\e[36;1m\])-(\[\e[37;1m\]\w\\[\e[36;1m\])\n\[\e[33;1m\]\$(parse_git_branch)$ \[\e[0m\]"
