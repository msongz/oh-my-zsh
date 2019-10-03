if [ $commands[fasd] ]; then # check if fasd is installed
  fasd_cache="${ZSH_CACHE_DIR}/fasd-init-cache"
  if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
    fasd --init auto >| "$fasd_cache"
  fi
  source "$fasd_cache"
  unset fasd_cache

<<<<<<< HEAD
  alias v="f -e \"$EDITOR\""
=======
  alias v='f -e "$EDITOR"'
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
  alias o='a -e xdg-open'
  alias j='zz'
fi
