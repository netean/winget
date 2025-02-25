::## run in administrator terminal

::## Git
winget install -e --id Git.Git
winget install -e --id TortoiseGit.TortoiseGit



::## ides & code
winget install -e --id Microsoft.VisualStudioCode
::## Install "latest Python"
winget install python3

::## winmerge
winget install -e --id WinMerge.WinMerge

::## Neovim
::## winget install -e --id Neovim.Neovim


::## SSH
winget install -e --id PuTTY.PuTTY

::## Helm for Kubernetes
winget install Helm.Helm


::## Azure 
winget install -e --id Microsoft.AzureCLI
winget install -e --id Microsoft.Azure.StorageExplorer

::## Docker Desktop
winget install -e --id Docker.DockerDesktop


::## Terraform
winget install -e --id Hashicorp.Terraform


::### ==========================
::## optional, uncomment to run
::### ==========================

::## install ubuntu in wsl2
::## winget install --id=Microsoft.WSL  -e
