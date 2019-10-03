# Homestead basic command completion
_homestead_get_command_list () {
<<<<<<< HEAD
  homestead --no-ansi | sed "1,/Available commands/d" | awk '/^ +[a-z]+/ { print $1 }'
=======
  homestead --no-ansi | sed -E "1,/(Available|Common) commands/d" | awk '/^ +[a-z]+/ { print $1 }'
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
}

_homestead () {
  compadd `_homestead_get_command_list`
}

compdef _homestead homestead
