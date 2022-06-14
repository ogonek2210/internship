
  626  git clone https://github.com/ogonek2210/DevOps_SandBox.git
  627  cd DevOps_SandBox/
  628  git status
  629  git add .
  630  git commit -m "Added task1 folder"
  631  git push -u origin master
  632  git branch dev
  633  git checkout dev
  634  git push -u origin dev
  635  git status
  636  git add .
  637  git commit -m "Added File_Test.ps1"
  638  git push
  639  git branch anna-new_feature
  640  git checkout anna-new_feature
  641  git status
  642  git add .
  643  git commit -m "Added gitignore file and changed README.md" 
  644  git push -u origin anna-new_feature
  645  git checkout master
  646  git pull
  647  git checkout anna-new_feature
  648  git pull
  649  git add .
  650  git commit -m "Changed README.md file"
  651  git shortlog -s
  652  git shortlog -s --all
  653  git log
  654  git revert 956d98c6
  655  git log
  656  git checkout master
  657  git log > log.txt
  658  history > history_for_print.txt
  659  git add .
  660  git commit -m "Added log.txt to the master branch"
  661  git push
  662  git branch -d anna-new_feature
  663  git branch -D anna-new_feature
  664  git branch -a
  665  git push origin --delete anna-new_feature
  666  git checkout dev
  667  git pull
  668  history > git_commands.md
