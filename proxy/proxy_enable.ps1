# start-service cntlm

set-itemproperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -name ProxyEnable -value 1
if (Test-Path $env:USERPROFILE\.m2\settings.xml) {
    Remove-Item $env:USERPROFILE\.m2\settings.xml
}
Copy-Item $env:USERPROFILE\.m2\settings_proxy.xml $env:USERPROFILE\.m2\settings.xml

if (Test-Path $env:USERPROFILE\.atom\.apmrc) {
    Remove-Item $env:USERPROFILE\.atom\.apmrc
}
Copy-Item $env:USERPROFILE\.atom\.apmrc.proxy $env:USERPROFILE\.atom\.apmrc

if (Test-Path $env:USERPROFILE\.gitconfig) {
    Remove-Item $env:USERPROFILE\.gitconfig
}
Copy-Item $env:USERPROFILE\.gitconfig_proxy $env:USERPROFILE\.gitconfig
