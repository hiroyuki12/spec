#!/usr/bin/env bash

bundle init
echo 'gem "serverspec"' >> Gemfile
sudo bundle install
bundle exec serverspec-init

git checkout recipe.yml spec/spec_helper.rb
cd spec/localhost
git checkout homebrew_spec.rb myhome_spec.rb package_spec.rb user_spec.rb
mv sample_spec.rb sample_spec
