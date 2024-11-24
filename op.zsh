op() {
  if [[ "$1" == "item" ]]; then
    for arg in "$@"; do
      if [[ "$arg" == --vault=* || "$arg" == "--vault" ]]; then
        command op "$@"
        return
      fi
    done
    # Append the default --vault argument
    command op "$@" --vault=Private
  else
    command op "$@"
  fi
}
