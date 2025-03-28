#invoke the oh-my-posh
# follow the instructions for the install https://ohmyposh.dev/docs/installation/windows
#(@(& 'C:/Users/user/AppData/Local/Programs/oh-my-posh/bin/oh-my-posh.exe' init pwsh --config='' --print) -join "`n") | Invoke-Expression

#this chunk will change the theme locate the themes on the path bellow this comment
#oh-my-posh init pwsh --config 'C:\Users\user\AppData\Local\Programs\oh-my-posh\themes\amro.omp.json' | Invoke-Expression

#starship prompt 
Invoke-Expression (&starship init powershell)

#disable autopredict 
Set-PSReadLineOption -PredictionSource None

# Import-Module PSReadLine
Remove-Module PSReadLine

#Fzf install
#scoop install fzf
#Install-Module -Name PSFzf -Scope CurrentUser -Force
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

#terminal icons: Install-Module -Name Terminal-Icons -Repository PSGallary -Force
#Import-Module Terminal-Icons
Import-Module -Name Terminal-Icons

# Alias
Set-Alias -Name vim -Value nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

#PsReadline autocomplete
#Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
#Set-PSReadlineOption -PredictionSource History
#Set-PSReadlineOption --PredictionViewStyle ListVie


# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

  # install lazygit
#scoop bucket add extras
#Install lazygit
#scoop install lazygit


