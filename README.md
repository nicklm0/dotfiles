# Dotfiles
This repository contains my personal configuration files (dotfiles) for various development tools and environments. These dotfiles help streamline my workflow and set up a consistent development environment.

---

## For Linux Environment
### Tools and Installation Guides  
Here are some tools and installation guides I use:
- [Link to create GPG key to login on Docker](https://docs.docker.com/desktop/setup/sign-in/#signing-in-with-docker-desktop-for-linux)
- [Installing Neovim from source](https://github.com/nicklm0/dotfiles/blob/master/nvim/install.md)  
- [Installing GitLab Development Kit (GDK)](https://gitlab.com/gitlab-org/gitlab-development-kit)  
- [Installing Lazygit because I like it )](https://github.com/jesseduffield/lazygit)
- [Installing nerdfonts for the terminal icons and fonts](https://www.nerdfonts.com/font-downloads)
- [Installing docker to the Linux machine](https://docs.docker.com/desktop/setup/install/linux/#kvm-virtualization-support)
---

## Windows `PowerShell` and `WSL` Environment
Essential Packages to install on win

- [Link to install Windows subsystem for linux](https://learn.microsoft.com/en-us/windows/wsl/install)
- [Link to install the windows terminal](https://apps.microsoft.com/detail/9n0dx20hk701?hl=en-US&gl=US)
- [Link to see the Powershell environment ps1 setup](https://github.com/nicklm0/dotfiles/blob/master/Powershell_configs/Microsoft.PowerShell_profile.ps1)

- [installing scoop for tools and etc](https://github.com/ScoopInstaller/Scoop#readme)

- [Installing PowerShell core to use the fullpower](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.5)

- [installing winget for other win11 tools and pkgs](https://github.com/microsoft/winget-cli)
  
- [Installing nerdfonts for the terminal icons and fonts](https://www.nerdfonts.com/font-downloads)
  
- [need to create this file first on the documents folder](https://github.com/nicklm0/dotfiles/blob/master/Powershell_configs/powershell.config.json)
- [Installing Docker on win 11](https://www.docker.com/)


inside the powershell config
```powershell
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
```
