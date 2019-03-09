#!/bin/bash
# Random password generator
# usage:  randpw {optional} number of chars
# otherwise randpw will generate 5 random passwords, 18 char in length
# John Elliott <jelliott@capnduck.com>
# Mar 2019 v.02
for i in {1..5}; do
  LENGTH=${1:-18}
  PASS=$(LC_CTYPE=C tr -dc '\41\43\44\45\46\50-\176' < /dev/urandom | head -c $LENGTH | xargs )
  echo "$PASS"
done
