GIT_AUTO_FETCH_INTERVAL=${GIT_AUTO_FETCH_INTERVAL:=60}

function git-fetch-all {
  (`git rev-parse --is-inside-work-tree 2>/dev/null` &&
  dir=`git rev-parse --git-dir` &&
  [[ ! -f $dir/NO_AUTO_FETCH ]] &&
  (( `date +%s` - `date -r $dir/FETCH_LOG +%s 2>/dev/null || echo 0` > $GIT_AUTO_FETCH_INTERVAL )) &&
<<<<<<< HEAD
  git fetch --all &>! $dir/FETCH_LOG &)
=======
  git fetch --all 2>/dev/null &>! $dir/FETCH_LOG &)
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
}

function git-auto-fetch {
  `git rev-parse --is-inside-work-tree 2>/dev/null` || return
  guard="`git rev-parse --git-dir`/NO_AUTO_FETCH"

  (rm $guard 2>/dev/null &&
    echo "${fg_bold[green]}enabled${reset_color}") ||
  (touch $guard &&
    echo "${fg_bold[red]}disabled${reset_color}")
}

<<<<<<< HEAD
eval "override-git-auto-fetch-$(declare -f zle-line-init)"

function zle-line-init () {
  git-fetch-all
  override-git-auto-fetch-zle-line-init
}
=======
# Override zle-line-init if it exists
if (( $+functions[zle-line-init] )); then
  eval "override-git-auto-fetch-$(declare -f zle-line-init)"
  
  function zle-line-init () {
    git-fetch-all
    override-git-auto-fetch-zle-line-init
  }
else
  function zle-line-init () {
    git-fetch-all
  }
fi
  
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
zle -N zle-line-init
