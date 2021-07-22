#!/usr/bin/env bash

if [[ $# -eq 0 ]]; then
  echo "Usage:"
  echo "  $0 [<newversion> | major | minor | patch | premajor | preminor | prepatch | prerelease [--preid=<prerelease-id>] | from-git]"
  exit 1
fi

set -ex

npm ci
npm version $*
git push --tags
npm publish
