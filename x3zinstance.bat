@echo off

title X3zInstance


color 0F
chcp 65001
mode 125,35
goto main



:main
cls
                                  
color c



echo         ██╗  ██╗██████╗ ███████╗██╗███╗   ██╗███████╗████████╗ █████╗ ███╗   ██╗ ██████╗███████╗
echo         ╚██╗██╔╝╚════██╗╚══███╔╝██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗████╗  ██║██╔════╝██╔════╝
echo          ╚███╔╝  █████╔╝  ███╔╝ ██║██╔██╗ ██║███████╗   ██║   ███████║██╔██╗ ██║██║     █████╗  
echo          ██╔██╗  ╚═══██╗ ███╔╝  ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║╚██╗██║██║     ██╔══╝  
echo         ██╔╝ ██╗██████╔╝███████╗██║██║ ╚████║███████║   ██║   ██║  ██║██║ ╚████║╚██████╗███████╗
echo         ╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝
                                                                                        

echo.

echo. 
echo                        [1] Delete DigitalEntitlements
echo                        [2] Delete CitizenFX
echo                        [3] Delete Cache                               
echo                                                                                                        [+] Next Page

echo.

set /p choix=Choice : 



if %choix% EQU 1 goto digital (
if %choix% EQU 2 goto citizenfx
if %choix% EQU 3 goto clearch
if %choix% EQU + goto nextpage
) ELSE (
goto main
)



:digital

if exist %LocalAppData%\DigitalEntitlements\ (
    
    cls
    rmdir /s /q "%LocalAppData%\DigitalEntitlements"
    echo Completed.
    timeout 2 >nul
    goto main
) else (
    cls
    
    echo Folder not exist.
    timeout 2 >nul
    goto main
)


:clearch

if exist %LocalAppData%\FiveM\FiveM.app\data\ (
    
    cls
    rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\cache"
    rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\nui-storage"
    rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache"
    rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache-priv"
    cls
    echo Completed.
    timeout 2 >nul
    goto main
) else (
    cls
    
    echo Folder not exist.
    timeout 2 >nul
    goto main
)

:citizenfx

if exist %Appdata%\CitizenFX\ (
    cls
    rmdir /s /q "%Appdata%\CitizenFX"
    echo Completed.
    timeout 2 >nul 
    goto main
) else (
    
    cls
    echo Folder not exist.
    timeout 3 >nul
    goto main
)




:nextpage
cls
echo         ██╗  ██╗██████╗ ███████╗██╗███╗   ██╗███████╗████████╗ █████╗ ███╗   ██╗ ██████╗███████╗
echo         ╚██╗██╔╝╚════██╗╚══███╔╝██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗████╗  ██║██╔════╝██╔════╝
echo          ╚███╔╝  █████╔╝  ███╔╝ ██║██╔██╗ ██║███████╗   ██║   ███████║██╔██╗ ██║██║     █████╗  
echo          ██╔██╗  ╚═══██╗ ███╔╝  ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║╚██╗██║██║     ██╔══╝  
echo         ██╔╝ ██╗██████╔╝███████╗██║██║ ╚████║███████║   ██║   ██║  ██║██║ ╚████║╚██████╗███████╗
echo         ╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝
                                                                                        

echo.

echo. 
echo                        [4] Delete Mods
echo                        [5] Delete Crash
echo                        [6] Credit                                 
echo                                                                                              [0] Previous Page
echo.

set /p az=Choice : 

if %az% EQU 0 goto main
if %az% EQU 4 goto dlmods
if %az% EQU 5 goto crash
if %az% EQU 6 goto credit
) ELSE (
goto nextpage

:dlmods
if exist %LocalAppData%\FiveM\FiveM.app\mods\ (
    cls
    rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\mods\"
    echo Completed.
    timeout 2 >nul 
    goto main
) else (
    
    cls
    echo Folder not exist.
    timeout 3 >nul
    goto main
)

:crash
if exist %LocalAppData%\FiveM\FiveM.app\crashes\ (
    cls
    rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\crashes\"
    echo Completed.
    timeout 2 >nul 
    goto main
) else (
    
    cls
    echo Folder not exist.
    timeout 3 >nul
    goto main
)


:credit
color c
cls
echo         ██╗  ██╗██████╗ ███████╗██╗███╗   ██╗███████╗████████╗ █████╗ ███╗   ██╗ ██████╗███████╗
echo         ╚██╗██╔╝╚════██╗╚══███╔╝██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗████╗  ██║██╔════╝██╔════╝
echo          ╚███╔╝  █████╔╝  ███╔╝ ██║██╔██╗ ██║███████╗   ██║   ███████║██╔██╗ ██║██║     █████╗  
echo          ██╔██╗  ╚═══██╗ ███╔╝  ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║╚██╗██║██║     ██╔══╝  
echo         ██╔╝ ██╗██████╔╝███████╗██║██║ ╚████║███████║   ██║   ██║  ██║██║ ╚████║╚██████╗███████╗
echo         ╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝
echo.
echo [31mDevlopper:[0m[16m Fontesie[0m
echo [31mDiscord:[0m[16m Fontesie#2621[0m
echo [31mDiscord link:[0m[16m https://discord.gg/jxS2U9be9q[0m
echo.
echo Press ENTER to exit
pause>Nul
color c
goto nextpage



