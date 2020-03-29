#!/usr/bin/env bash

# give exe permission
sudo chmod +x ./scripts/validate.rb

bundle exec jekyll build
#bundle exec htmlproofer ./_site --check-html --check-sri
bundle exec rubocop -D
./scripts/validate.rb
gem build vitrina.gemspec
