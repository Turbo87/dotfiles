#!/usr/bin/env bash

upstream_output=$(git remote show -n upstream | grep "Fetch URL" | grep "@github.com:")
origin_output=$(git remote show -n origin | grep "Fetch URL" | grep "@github.com:")

re="/([^/]+)\.git"
if [[ $upstream_output =~ $re ]]; then
  project_name=${BASH_REMATCH[1]};
elif [[ $origin_output =~ $re ]]; then
  project_name=${BASH_REMATCH[1]};
else
  exit 1;
fi

remote="git@github.com:$1/$project_name.git"

$(git remote add $1 $remote)
$(git fetch $1)
