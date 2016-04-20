#!/usr/bin/env bash
set -e

gometalinter --vendor --disable-all \
  --enable=deadcode \
  --enable=ineffassign \
  --enable=gosimple \
  --enable=staticcheck \
  ./...
