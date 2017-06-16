#!/usr/bin/env bash

bundle init
echo 'gem "serverspec"' >> Gemfile
sudo bundle install
bundle exec serverspec-init
