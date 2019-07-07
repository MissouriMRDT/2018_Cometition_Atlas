# 2018_Cometition_Atlas
All Hardware and Software Files used in the 2018 Competition

Deprecated-Systems
Deprecated sub-system repositories that have no present day equivalent

How to add repos to this while retaining commit history:

Clone this repo onto your pc
Make branch on here for the repo you're about to copy in
Make sure that you've merged the final release branch of the target repo into master
in gitshell inside of the 2018 Competition Atlas folder:
git checkout [name of branch you're going to copy the repo into]

git remote add x [url of deprecated repo]

git fetch x

git merge x/master --allow-unrelated-histories

git remote rm x
