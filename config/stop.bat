@ECHO OFF
ECHO Shutting Down Service, please wait ...
call "ThisDirPath/mysql5/stop_mysql5.bat"
call "ThisDirPath/apache2/stop_apache.bat"
ECHO Shutting Down Service, Finish