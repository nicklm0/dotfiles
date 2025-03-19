# Dotfiles
This repository contains my personal configuration files (dotfiles) for various development tools and environments. These dotfiles help streamline my workflow and set up a consistent development environment.

---

## For Linux Environment
### Tools and Installation Guides  
Here are some tools and installation guides I use:

- [Installing Neovim from source](https://github.com/nicklm0/dotfiles/blob/master/nvim/install.md)  
- [Installing GitLab Development Kit (GDK)](https://gitlab.com/gitlab-org/gitlab-development-kit)  
- [Installing Lazygit because I like it )](https://github.com/jesseduffield/lazygit)

---

## Windows (PowerShell) Environment
[Link to see the Powershell environment ps1 setup](https://github.com/nicklm0/dotfiles/blob/master/Powershell_configs/Microsoft.PowerShell_profile.ps1)

[installing scoop for tools and etc](https://github.com/ScoopInstaller/Scoop#readme)

[installing winget for other win11 tools and pkgs](https://github.com/microsoft/winget-cli)
### Essential Packages  

```powershell
# Install fzf using scoop
scoop install fzf

# Install PSFzf module
Install-Module -Name PSFzf -Scope CurrentUser -Force


# Install Terminal-Icons
Install-Module -Name Terminal-Icons -Repository PSGallery -Force

# Import the module to your Microsoft.PowerShell_profile
Import-Module -Name Terminal-Icons

# Install PSReadLine module
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

# Enable command history-based predictions
Set-PSReadlineOption -PredictionSource History
Set-PSReadlineOption -PredictionViewStyle ListView


# Install lazygit on Powershell 
# Add the extras bucket for Scoop
scoop bucket add extras

# Install Lazygit
scoop install lazygit
```
