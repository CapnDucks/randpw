#!/bin/bash
# Random password generator
# usage:  randpw <number of chars>
# John Elliott <jelliott@capnduck.com>
# Sept 2018 v.01
for i in {1..5}; do
  LENGTH=${1:-18}
  PASS=$(LC_CTYPE=C tr -dc '\41\43\44\45\46\50-\176' < /dev/urandom | head -c 18 | xargs )
  echo "$PASS"
done
