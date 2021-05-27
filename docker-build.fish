#!/usr/bin/env fish

function do_func
  argparse -n do_func 'h/help' 'i/image=' 't/tag=' -- $argv
  or return 1

  if set -lq _flag_help
    echo "docker-build.fish -i/--image <IMAGE_NAME> -t/--tag <VERSION_TAG>"
    return
  end

  cd tutorial & ./archive.fish
  cd ..
  
  set -lq _flag_image
  or set -l _flag_image "shinyay/codelab"
  set -lq _flag_tag
  or set -l _flag_tag "0.0.1"

  docker build --build-arg ID=(awk 'NR==2 {print}' docs/tutorial.md| awk -F' ' '{print $2}') -t $_flag_image:$_flag_tag .
end

do_func $argv
