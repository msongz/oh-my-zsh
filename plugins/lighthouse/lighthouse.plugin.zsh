<<<<<<< HEAD
# To use: add a .lighthouse file into your directory with the URL to the
# individual project. For example:
# https://rails.lighthouseapp.com/projects/8994
# Example usage: https://screencast.com/t/ZDgwNDUwNT
=======
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
open_lighthouse_ticket () {
  if [ ! -f .lighthouse-url ]; then
    echo "There is no .lighthouse-url file in the current directory..."
    return 0
  fi

  lighthouse_url=$(cat .lighthouse-url)
  echo "Opening ticket #$1"
  open_command "$lighthouse_url/tickets/$1"
}

alias lho='open_lighthouse_ticket'
