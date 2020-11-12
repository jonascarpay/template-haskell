#!/usr/bin/env bash

defname=$(basename $(pwd))
read -p "Package name [$defname]: " pkgname
pkgname=${pkgname:-$defname}

git ls-files | xargs -I _ sed "s/NAME/$pkgname/g" _ -i

mv "NAME.cabal" $pkgname.cabal

rm -- "$0" # delete self

rm -rf .git
git init
git add --all
git commit -m "Initial commit"
