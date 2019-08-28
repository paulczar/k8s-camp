#!/bin/bash

#set -e
#set -x
set -o pipefail

if [[ -z "$GITHUB_WORKSPACE" ]]; then
  echo "Set the GITHUB_WORKSPACE env variable."
  exit 1
fi

if [[ -z "$GITHUB_REPOSITORY" ]]; then
  echo "Set the GITHUB_REPOSITORY env variable."
  exit 1
fi

echo "--> Configure git client"

git config --global user.email "username.taken@gmail.com"
git config --global user.name "Hugo Publisher"

echo "--> check out gh-pages"
git worktree add -B gh-pages public origin/gh-pages

echo "--> hugo publish"
cd $GITHUB_WORKSPACE
/hugo


echo "--> push gh-pages"
if [[ -z "$PUSH_TOKEN" ]]; then
  echo "No push token provided, skipping publish"
else
  cd public
  git add --all && \
  git commit -m "Github Action Build ${GITHUB_SHA} `date +'%Y-%m-%d %H:%M:%S'`" --allow-empty && \
  git remote set-url origin https://${GITHUB_ACTOR}:${PUSH_TOKEN}@github.com/${GITHUB_REPOSITORY}
  git push origin gh-pages:gh-pages
fi