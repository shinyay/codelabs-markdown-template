#!/usr/bin/env fish
git clone -b 1.0.0 https://github.com/shinyay/codelab-spring-boot-rest-code.git tutorial
rm -fr tutorial/.git
tar cvfz tutorial.tar.gz tutorial
rm -fr tutorial
