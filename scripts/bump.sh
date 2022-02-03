echo "# `sver -n patch`" >> ./src/policies/get.rego
git add .
git commit -m "`sver -n patch`"
git push
git push --tags
