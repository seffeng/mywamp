@ECHO OFF
ECHO Starting Service, please wait ...
call "ThisDirPath/mysql/start_mysql5.5.bat"
call "ThisDirPath/apache/start_apachephp7.0.bat"
ECHO Starting Service, Finish