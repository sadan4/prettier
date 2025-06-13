set -eo pipefail
git clean -dfX
yarn
yarn build
tar czf prettier.tgz --directory=dist/prettier .
gh release upload latest prettier.tgz --clobber
echo "sucessfully published tarball"
