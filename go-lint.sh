#!/usr/bin/env bash
set -e

# golint doesn't return a proper exit code on any errors, so we consider any
# output to stdout or stderr as an error.
exec 4>&1
for file in "$@"; do
  output="$(golint "$file" 2>&1 | tee /dev/fd/4)"
  [[ -z "$output" ]]
done
