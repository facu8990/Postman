@echo off
set apikey="PMAK-640ff23495d74f6ee3a1b7f0-876f1c2f1ecefcc27269455052be1c4d04"
set /p collection="Enter the Collection's ID: "
set /p environment="Enter the Environment's ID: "
call npx newman run https://api.getpostman.com/collections/%collection%?apikey=%apikey% -e https://api.getpostman.com/environments/%environment%?apikey=%apikey% -r cli,htmlextra
