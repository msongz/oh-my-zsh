source_env() {
<<<<<<< HEAD
  if [[ -f .env ]]; then
    # test .env syntax
    zsh -fn .env || echo 'dotenv: error when sourcing `.env` file' >&2

    if [[ -o a ]]; then
      source .env
    else
      set -a
      source .env
=======
  if [[ -f $ZSH_DOTENV_FILE ]]; then
    # test .env syntax
    zsh -fn $ZSH_DOTENV_FILE || echo "dotenv: error when sourcing '$ZSH_DOTENV_FILE' file" >&2

    if [[ -o a ]]; then
      source $ZSH_DOTENV_FILE
    else
      set -a
      source $ZSH_DOTENV_FILE
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
      set +a
    fi
  fi
}

autoload -U add-zsh-hook
add-zsh-hook chpwd source_env

<<<<<<< HEAD
=======
if [[ -z $ZSH_DOTENV_FILE ]]; then
    ZSH_DOTENV_FILE=.env
fi

>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
source_env
