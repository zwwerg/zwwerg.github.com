#!/bin/bash
echo "Watching all *.org source and rebuild whenever any files changes"

# See also:
# https://github.com/gorakhargosh/watchdog

# Build the docs
watchmedo3 shell-command \
           --patterns="*.org; *.css" \
           --ignore-directories \
           --recursive --command='make deploy-local' org-posts css static
