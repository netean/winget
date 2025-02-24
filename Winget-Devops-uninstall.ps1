## run in administrator terminal

## Git
winget uninstall -e --id Git.Git
winget uninstall -e --id TortoiseGit.TortoiseGit



## ides & code
winget uninstall -e --id Microsoft.VisualStudioCode
## uninstall "latest Python"
winget uninstall python3

## winmerge
winget uninstall -e --id WinMerge.WinMerge

## Neovim
## winget uninstall -e --id Neovim.Neovim


## SSH
winget uninstall -e --id PuTTY.PuTTY

## Helm for Kubernetes
winget uninstall Helm.Helm


## Azure cli
winget uninstall -e --id Microsoft.AzureCLI

## Docker Desktop
winget uninstall -e --id Docker.DockerDesktop



### ==========================
## optional, uncomment to run
### ==========================

## uninstall ubuntu in wsl2
## winget uninstall --id=Microsoft.WSL  -e