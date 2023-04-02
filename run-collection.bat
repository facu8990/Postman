@echo off
set apikey="PMAK-xxxxxxxxxxxxxxxxxxxxxxxx-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
set /p collection="Enter the Collection's ID: "
set /p environment="Enter the Environment's ID: "
call npx newman run https://api.getpostman.com/collections/%collection%?apikey=%apikey% -e https://api.getpostman.com/environments/%environment%?apikey=%apikey% -r cli,htmlextra
