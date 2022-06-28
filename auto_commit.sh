#!/bin/bash

su andy

git pull

git add .

ret=$(git commit -m "1")
# Can't use =~ in [ ]. Use [[..]] instead.
if [[ "$ret" =~ "nothing to commit" ]]; then
  echo "nothing to commit!"
else
  git push
fi
