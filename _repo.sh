#!/bin/bash

cd x86_64
rm yuku_repo*

echo "repo-add"
repo-add -n -R -v yuku_repo.db.tar.gz *.pkg.tar.zst
rm -v yuku_repo.db
rm -v yuku_repo.files
mv -v yuku_repo.db.tar.gz yuku_repo.db
mv -v yuku_repo.files.tar.gz yuku_repo.files
cd ..
echo "####################################"
echo "Repo Updated!!"
echo "####################################"