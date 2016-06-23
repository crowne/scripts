Set-Itemproperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -name ProxyEnable -value 0
if (Test-Path $env:USERPROFILE\.m2\settings.xml) {
    Remove-Item $env:USERPROFILE\.m2\settings.xml
}
Copy-Item $env:USERPROFILE\.m2\settings_noproxy.xml $env:USERPROFILE\.m2\settings.xml

if (Test-Path $env:USERPROFILE\.atom\.apmrc) {
    Remove-Item $env:USERPROFILE\.atom\.apmrc
}

if (Test-Path $env:USERPROFILE\.gitconfig) {
    Remove-Item $env:USERPROFILE\.gitconfig
}
Copy-Item $env:USERPROFILE\.gitconfig_noproxy $env:USERPROFILE\.gitconfig

# get-service -Name cntlm | stop-service
# pause
