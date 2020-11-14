#!/usr/bin/env bash

defname=$(basename $(pwd))
read -p "Package name [$defname]: " pkgname
pkgname=${pkgname:-$defname}

defauth=$(git config --get user.name)
read -p "Author name [$defauth]: " authname
authname=${authname:-$defauth}

defmail=$(git config --get user.email)
read -p "Author name [$defmail]: " authmail
authmail=${authmail:-$defmail}

currentyear=$(date +"%Y")

git ls-files | xargs -I _ sed "s/PKGNAME/$pkgname/g" _ -i
git ls-files | xargs -I _ sed "s/AUTHNAME/$authname/g" _ -i
git ls-files | xargs -I _ sed "s/EMAIL/$authmail/g" _ -i
git ls-files | xargs -I _ sed "s/CURRENTYEAR/$currentyear/g" _ -i

mv "PKGNAME.cabal" $pkgname.cabal

rm README.md
echo "# $pkgname" >README.md

rm wizard.sh

rm -rf .git
git init
git add --all
git commit -m "Initial commit"
