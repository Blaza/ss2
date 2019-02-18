# configure your name and email if you have not done so
git config --global user.email "radebeka@gmail.com"
git config --global user.name "Travis CI"

# clone the repository to the book-output directory
git clone -b gh-pages \
  https://${GITHUB_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git \
  book-output
cd book-output
git rm -rf *
cp -r ../docs/* ./
touch .nojekyll
git add .nojekyll
git add --all *
git commit -m "Update the book"
git push -q origin gh-pages