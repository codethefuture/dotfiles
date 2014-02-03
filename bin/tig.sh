function m() {
  VAR=`git merge origin/master --ff`
  if [ $VAR = "Already up-to-date." ]; then
    echo $VAR
  else
    tig HEAD@{1}..HEAD
  fi
  unset VAR
}
function f() {
  OLD_HASH=`git show-ref origin/master | cut -d' ' -f1`
  git fetch -p
  NEW_HASH=`git show-ref origin/master | cut -d' ' -f1`
  if [ $OLD_HASH != $NEW_HASH ]; then
    tig $OLD_HASH..$NEW_HASH
  fi
  unset OLD_HASH NEW_HASH
}
