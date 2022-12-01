#// Scoop 
# Set-ExecutionPolicy Unrestricted -Scope CurrentUser
winget install scoop
winget install chocolatey

scoop install git
scoop bucket add extras
scoop bucket add main

scoop install vcredist
scoop install windows-terminal
scoop install taskbarx
scoop install modernflyouts
scoop install eartrumpet
C:\Users\simon\scoop\apps\eartrumpet\current\add-startup.reg
scoop install windirstat
scoop install dotnet-sdk
scoop install vscode
scoop install teamspeak3
scoop install winaero-tweaker
scoop install spotify
scoop install 7zip
C:\Users\simon\scoop\apps\7zip\current\install-context.reg
scoop install modern7z
scoop install 7ztm


winget install Microsoft.PowerToys
winget install valve.steam
winget install Mozilla.Firefox
# install fish
winget install fish-shell.fish

if ($args -contains '--debloat') {
    # //debloating 
    git clone https://github.com/Sycnex/Windows10Debloater.git
    cd .\Windows10Debloater\
    .\Windows10DebloaterGUI.ps1
}

if ($args -contains '--wsl') {
    wsl --install
    # // WSL2
    wsl --set-default-version 2
    # // Ubuntu
    wsl --install -d Ubuntu
}