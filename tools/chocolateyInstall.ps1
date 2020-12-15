$packageName = 'amd-mingw-get'
$url='https://mirrors.xtom.com/osdn/mingw/68260/mingw-get-0.6.3-mingw32-pre-20170905-1-bin.tar.xz'
$binRoot = Get-BinRoot
$installDir = Join-Path "$binRoot" 'mingw64'
Install-ChocolateyPath $installDir 'Machine'
Install-ChocolateyZipPackage "$packageName" $url $installDir
Write-Host "Dropping mingw-get profile.xml"
Copy-Item "$installDir\var\lib\mingw-get\data\defaults.xml" "$installDir\var\lib\mingw-get\data\profile.xml"
Update-SessionEnvironment
