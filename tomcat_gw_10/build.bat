SET product_name=PolicyCenter
set GW_HOME=C:\guidewire_10\%product_name%
echo %GW_HOME%

cd %GW_HOME%
timeout /t  1
goto execute
:execute

start /W .\warTomcatDbcp.bat
echo "finish build war, cpoing check when fail"
timeout /t  600
goto docker
:docker
set nickname=pc
set DOCKER_HOME=C:\cloud_dev\tomcat_gw_10\suite\%nickname%
SET prodname=policycenter
cp %GW_HOME%\dist\wars\TomcatDbcp\%nickname%.war %DOCKER_HOME%\webapps\
cd %DOCKER_HOME%
start /W docker build -t gwcloud/%prodname% .