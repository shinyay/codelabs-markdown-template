#!/usr/bin/env fish

function do_func
  argparse -n do_func 'h/help' 'f/file=' -- $argv
  or return 1

  if set -lq _flag_help
    echo "claat-export.fish -f/--file <TARGET_MARKDOWN>"
    return
  end

  set -lq _flag_file
  or set -l _flag_file "tutorial.md"

  docker run --rm -it -v (pwd):/app --name claat shinyay/claat export $_flag_file
end

do_func $argv
