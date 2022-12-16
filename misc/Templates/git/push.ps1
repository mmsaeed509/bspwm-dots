#
# Copyright (C) 2022 Mahmoud Mohamed (00xWolf)  <https://github.com/mmsaeed509>
# LICENSE © GNU-GPL3
#

#
# you can run script with 2 arguments (your commit comment)
# ./push.ps1 -m "yourCommit"
#

# a simple PowerShell script to push your commits to GitHub #

Write-Host "#############################" -ForegroundColor Cyan
Write-Host "#      Git Push Script      #" -ForegroundColor Cyan
Write-Host "#############################" -ForegroundColor Cyan


# get branch name (e.g master, main, etc... ) #
$Branch = git branch --show-current

Write-Host "`n[*] Your Current Branch : $Branch" -ForegroundColor Red

# get new updates if it founded #
Write-Host "`n[+] Updating Repo... `n" -ForegroundColor Magenta
git pull 

Write-Host "`n[+] Adding new changes to the repo... `n" -ForegroundColor Magenta
git add --all .

$M = "-m"

if ( "$($args[0])" -eq $M ) {

    # commit changes#
    Write-Host ""
    git commit -m "$($args[1])"

}else {
    
    Write-Host "##################################" -ForegroundColor Magenta
    Write-Host "# Write your commit comment! :-  #" -ForegroundColor Magenta

    $COMMIT = Read-Host

    # commit changes#
    Write-Host ""
    git commit -m "$COMMIT"

}

# push to repo #
Write-Host ""
git push -u origin $Branch

# D O N E! #
Write-Host "`n[✔] D O N E `n" -ForegroundColor Green

