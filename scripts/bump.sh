for i in {1..40} 
do
  echo "Running step $i"
  echo "# `sver -n patch`" >> ./src/policies/get.rego
  git add .
  git commit -m "`sver -n patch`"
  git tag `sver -n patch`
  git push
  git push --tags
done
