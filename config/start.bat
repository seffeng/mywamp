@ECHO OFF
ECHO Starting Service, please wait ...
call "ThisDirPath/mysql5/start_mysql5.bat"
call "ThisDirPath/apache2/start_apachephp7.0.bat"
ECHO Starting Service, Finish