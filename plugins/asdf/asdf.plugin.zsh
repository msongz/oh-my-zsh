# Find where asdf should be installed
ASDF_DIR="${ASDF_DIR:-$HOME/.asdf}"
ASDF_COMPLETIONS="$ASDF_DIR/completions"

# If not found, check for Homebrew package
<<<<<<< HEAD
if [[ ! -d $ASDF_DIR ]] && (( $+commands[brew] )); then
   ASDF_DIR="$(brew --prefix asdf)"
=======
if [[ ! -f "$ASDF_DIR/asdf.sh" ]] && (( $+commands[brew] )); then
   ASDF_DIR="$(brew --prefix asdf)"
   ASDF_COMPLETIONS="$ASDF_DIR/etc/bash_completion.d"
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
fi

# Load command
if [[ -f "$ASDF_DIR/asdf.sh" ]]; then
    . "$ASDF_DIR/asdf.sh"

    # Load completions
<<<<<<< HEAD
    if [[ -f "$ASDF_DIR/completions/asdf.bash" ]]; then
        . "$ASDF_DIR/completions/asdf.bash"
=======
    if [[ -f "$ASDF_COMPLETIONS/asdf.bash" ]]; then
        . "$ASDF_COMPLETIONS/asdf.bash"
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
    fi
fi
