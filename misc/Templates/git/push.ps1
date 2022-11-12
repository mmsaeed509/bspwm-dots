#
# Copyright (C) 2022 Mahmoud Mohamed (00xWolf)  <https://github.com/mmsaeed509>
# LICENSE © GNU-GPL3
#

#
# you can run script with 2 arguments (your commit comment)
# ./push.ps1 -m "yourCommit"
#

# a simple PowerShell script to push your commits to GitHub #

Write-Host "#############################"
Write-Host "#      Git Push Script      #"
Write-Host "#############################"


# get branch name (e.g master, main, etc... ) #
$Branch = git branch --show-current



# get new updates if it founded #
Write-Host ""
Write-Host "#################"
Write-Host "# Updating Repo #"
Write-Host "#################"
git pull 


Write-Host ""
Write-Host "##################################"
Write-Host "# Adding new changes to the repo #"
Write-Host "##################################"
git add --all .

$M = "-m"

if ( "$($args[0])" -eq $M ) {

    # commit changes#
    Write-Host ""
    git commit -m "$($args[1])"

}else {
    
    Write-Host "##################################"
    Write-Host "# Write your commit comment! :-  #"

    $COMMIT = Read-Host

    # commit changes#
    Write-Host ""
    git commit -m "$COMMIT"

}

# push to repo #
Write-Host ""
git push -u origin $Branch

Write-Host ""
Write-Host "#####################"
Write-Host "#      D O N E      #"
Write-Host "#####################"

