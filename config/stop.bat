@ECHO OFF
ECHO Shutting Down Service, please wait ...
call "ThisDirPath/mysql/stop_mysql.bat"
call "ThisDirPath/apache/stop_apache.bat"
ECHO Shutting Down Service, Finish