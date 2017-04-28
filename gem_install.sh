#!/bin/bash

gem uninstall gemfile_entry
bin/setup
rake install
