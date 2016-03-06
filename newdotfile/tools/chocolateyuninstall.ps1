$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$zipBaseDir = "newdotfile-release-1.0.0"
$contextMenuScriptDir = Join-Path $toolsDir "$zipBaseDir\contextmenu\script"

. "$contextMenuScriptDir\install-new-dot-file.ps1"

Install-New-Dot-File $True
