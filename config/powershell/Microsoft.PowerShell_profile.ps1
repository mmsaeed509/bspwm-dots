##########################################################################################################
#																										 
#    Copyright © 2022 To Cyb3rTh1eveZ																	 
#																										 
#     ██████╗██╗   ██╗██████╗ ██████╗ ██████╗ ████████╗██╗  ██╗ ██╗███████╗██╗   ██╗███████╗███████╗	 
#    ██╔════╝╚██╗ ██╔╝██╔══██╗╚════██╗██╔══██╗╚══██╔══╝██║  ██║███║██╔════╝██║   ██║██╔════╝╚══███╔╝     
#    ██║      ╚████╔╝ ██████╔╝ █████╔╝██████╔╝   ██║   ███████║╚██║█████╗  ██║   ██║█████╗    ███╔╝      
#    ██║       ╚██╔╝  ██╔══██╗ ╚═══██╗██╔══██╗   ██║   ██╔══██║ ██║██╔══╝  ╚██╗ ██╔╝██╔══╝   ███╔╝       
#    ╚██████╗   ██║   ██████╔╝██████╔╝██║  ██║   ██║   ██║  ██║ ██║███████╗ ╚████╔╝ ███████╗███████╗     
#     ╚═════╝   ╚═╝   ╚═════╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═╝╚══════╝  ╚═══╝  ╚══════╝╚══════╝     
#																										 
#																										 
#																										 
#    Copyright (C) Mahmoud Mohamed (Ozil)  <https://github.com/mmsaeed509>								 
#    LICENSE © GNU-GPL3																					 
#																										 
##########################################################################################################

# clear #
clear

# Print Exodia OS && Exodia Fetch #
Write-Host "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━┓" -ForegroundColor DarkCyan
Start-Sleep -Seconds 0.3
Write-Host "┃                                                                                ┃   Exodia Fetch ┃        ┃" -ForegroundColor DarkCyan
Start-Sleep -Seconds 0.3
Write-Host "┃  ██╗ ██╗     ███████╗██╗  ██╗ ██████╗ ██████╗ ██╗ █████╗      ██████╗ ███████╗ ┣━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━┫"  -ForegroundColor DarkCyan
Start-Sleep -Seconds 0.3
Write-Host "┃ ████████╗    ██╔════╝╚██╗██╔╝██╔═══██╗██╔══██╗██║██╔══██╗    ██╔═══██╗██╔════╝ ┃                             ┃"   -ForegroundColor DarkCyan
Start-Sleep -Seconds 0.3
Write-Host "┃ ╚██╔═██╔╝    █████╗   ╚███╔╝ ██║   ██║██║  ██║██║███████║    ██║   ██║███████╗ ┃                             ┃" -ForegroundColor DarkCyan
Start-Sleep -Seconds 0.3
Write-Host "┃ ████████╗    ██╔══╝   ██╔██╗ ██║   ██║██║  ██║██║██╔══██║    ██║   ██║╚════██║ ┃   Developed by : 00xWolf   ┃" -ForegroundColor DarkCyan
Start-Sleep -Seconds 0.3
Write-Host "┃ ╚██╔═██╔╝    ███████╗██╔╝ ██╗╚██████╔╝██████╔╝██║██║  ██║    ╚██████╔╝███████║ ┃   GitHub : @mmsaeed509     ┃" -ForegroundColor DarkCyan
Start-Sleep -Seconds 0.3
Write-Host "┃  ╚═╝ ╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═╝     ╚═════╝ ╚══════╝ ┃ 﫥 Cyb3rTh1eveZ Team        ┃" -ForegroundColor DarkCyan
Start-Sleep -Seconds 0.3
Write-Host "┃                                                                                ┃                             ┃" -ForegroundColor DarkCyan
Start-Sleep -Seconds 0.3
Write-Host "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛" -ForegroundColor DarkCyan

# set theme #
oh-my-posh init pwsh --config ~/.poshthemes/atomic.omp.json | Invoke-Expression

# Alias #
Set-Alias eDEX-UI 'eDEX-UI-Linux-x86_64.AppImage'
Set-Alias M "ncmpcpp"
Set-Alias MA "~/.ncmpcpp/scripts/ncmpcpp-art"
Set-Alias typer "termtyper"

# ls #
Set-Alias ls "lsd"

# Alias with arguments (must be a function in case of arguments) #
function youtube { ytfzf -t }

# Pacman #
function sync {sudo pacman -Syyy}
function install {sudo pacman -S}
function update {sudo pacman -Syyu}
function search {sudo pacman -Ss}
function search-local {sudo pacman -Qs}
function pkg-info {sudo pacman -Qi}
function local-install {sudo pacman -U}
function clr-cache {sudo pacman -Scc}
function unlock {sudo rm /var/lib/pacman/db.lck}
function remove {sudo pacman -R}
function autoremove {sudo pacman -Rns}

# git #
function gcl {git clone --depth 1}
function gi {git init}
function ga {git add}
function gc {git commit -m}
function gp {git push origin master}
function cb {git checkout}

# ls #
function l {lsd -lh}
function ll {lsd -lah}
function la {lsd -A}
function lm {lsd -m}
function lr {lsd -R}
function lg {lsd -l --group-directories-first}


# # Print 00xWolf && Exodia Fetch #
# Write-Host "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━┓" -ForegroundColor DarkCyan
# Start-Sleep -Seconds 0.3
# Write-Host "┃                                                                             ┃   Exodia Fetch ┃        ┃" -ForegroundColor DarkCyan
# Start-Sleep -Seconds 0.3
# Write-Host "┃  ██╗ ██╗      ██████╗  ██████╗ ██╗  ██╗██╗    ██╗ ██████╗ ██╗     ███████╗  ┣━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━┫"  -ForegroundColor DarkCyan
# Start-Sleep -Seconds 0.3
# Write-Host "┃ ████████╗    ██╔═████╗██╔═████╗╚██╗██╔╝██║    ██║██╔═══██╗██║     ██╔════╝  ┃                             ┃"   -ForegroundColor DarkCyan
# Start-Sleep -Seconds 0.3
# Write-Host "┃ ╚██╔═██╔╝    ██║██╔██║██║██╔██║ ╚███╔╝ ██║ █╗ ██║██║   ██║██║     █████╗    ┃                             ┃" -ForegroundColor DarkCyan
# Start-Sleep -Seconds 0.3
# Write-Host "┃ ████████╗    ████╔╝██║████╔╝██║ ██╔██╗ ██║███╗██║██║   ██║██║     ██╔══╝    ┃   Developed by : 00xWolf   ┃" -ForegroundColor DarkCyan
# Start-Sleep -Seconds 0.3
# Write-Host "┃ ╚██╔═██╔╝    ╚██████╔╝╚██████╔╝██╔╝ ██╗╚███╔███╔╝╚██████╔╝███████╗██║       ┃   GitHub : @mmsaeed509     ┃" -ForegroundColor DarkCyan
# Start-Sleep -Seconds 0.3
# Write-Host "┃  ╚═╝ ╚═╝      ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚══╝╚══╝  ╚═════╝ ╚══════╝╚═╝       ┃ 﫥 Cyb3rTh1eveZ Team        ┃" -ForegroundColor DarkCyan
# Start-Sleep -Seconds 0.3
# Write-Host "┃                                                                             ┃                             ┃" -ForegroundColor DarkCyan
# Start-Sleep -Seconds 0.3
# Write-Host "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛" -ForegroundColor DarkCyan