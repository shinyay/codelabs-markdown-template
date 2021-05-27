#!/usr/bin/env fish

function do_func
  docker run --rm -it -v (pwd):/app -p 9090:9090 shinyay/claat serve -addr 0.0.0.0:9090
end

do_func $argv
