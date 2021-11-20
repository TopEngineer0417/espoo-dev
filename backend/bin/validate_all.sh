#!/bin/sh
echo $'\n-----------------------------------RSPEC-----------------------------------\n' && bundle exec rspec
echo $'\n-----------------------------------RUBOCOP-----------------------------------\n' && bundle exec rubocop
echo $'\n-----------------------------------REEK-----------------------------------\n' && bundle exec reek
echo $'\n-----------------------------------BRAKEMAN-----------------------------------\n' && bundle exec brakeman --no-pager
