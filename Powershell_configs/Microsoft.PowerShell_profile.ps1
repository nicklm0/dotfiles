#starshipt promt
Invoke-Expression (&starship init powershell)

#disable autopredict 
Set-PSReadLineOption -PredictionSource None

# Import-Module PSReadLine
Remove-Module PSReadLine

# Alias
Set-Alias -Name vim -Value nvim
Set-Alias ll ls
