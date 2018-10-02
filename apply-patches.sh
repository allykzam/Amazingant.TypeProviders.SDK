#!/usr/bin/env bash

set -eou pipefail
IFS=$'\n\t'

if [[ -e src ]] ; then
    rm -rf src
fi

mkdir src
cp SDK/src/ProvidedTypes.fs{,i} src/

find src -type f -print0 | xargs dos2unix -q

for x in *.patch ; do
    patch -p0 -i "$x"
done
