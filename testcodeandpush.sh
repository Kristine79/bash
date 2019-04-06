#!/bin/bash

codetest="npm run test"
addfiles="git add ."
commit="git commit -m"
push="git push origin"
currentbranch="git rev-parse --abbrev-ref HEAD"

if ($codetest | grep "npm ERR!") then
  echo "Есть ошибки в коде!"
else
  echo "УСПЕШНАЯ ПРОВЕРКА"
  echo  "Текст коммента?"
  read comment
  $commit $comment
  $push $modulenumber $currentbranch
fi
