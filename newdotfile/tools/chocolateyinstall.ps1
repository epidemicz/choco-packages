$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName= 'newdotfile'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/epidemicz/newdotfile/releases/download/1.0.0/newdotfile-release-1.0.0.zip'
$zipBaseDir = "newdotfile-release-1.0.0"
$contextMenuScriptDir = Join-Path $toolsDir "$zipBaseDir\contextmenu\script"
$newdotfileDir = Join-Path $toolsDir "$zipBaseDir\newdotfile"

Install-ChocolateyZipPackage $packageName $url $toolsDir

. "$contextMenuScriptDir\install-new-dot-file.ps1"

Install-ChocolateyPath $newdotfileDir
Install-New-Dot-File
