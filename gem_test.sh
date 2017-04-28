#!/bin/bash

gem uninstall gemfile_entry
bin/setup
echo '-----------------'
echo 'BEGIN TESTING gem'
rake
echo 'FINISHED TESTING gem'
echo '--------------------'
