@echo off
SET URL1='https://github.com/stlink-org/stlink/releases/download/v1.6.1/stlink-1.6.1-i686-w64-mingw32.zip'
SET URL='https://github.com/stlink-org/stlink/releases/download/v1.6.1/stlink-1.6.1-x86_64-w64-mingw32.zip'
SET OUTPUT='%~dp0stlink.zip'
SET TARGET='%~dp0'


echo "Downloading stlink utility to %OUTPUT%"
powershell -c "(New-Object Net.WebClient).DownloadFile(%URL%,%OUTPUT%)"
echo "Uncompressing stlink utility zip"
powershell -c "Expand-Archive -Path %OUTPUT%  -DestinationPath %TARGET%"
echo "Removing stlink utility zip"
del %~dp0\\stlink.zip

echo You will need the STLink Windows driver.
echo download it here:
echo https://www.st.com/content/st_com/en/products/development-tools/software-development-tools/stm32-software-development-tools/stm32-utilities/stsw-link009.html
