@ECHO OFF
ECHO Starting Php-Cgi5.6, please wait ...
"ThisDirPath/svr/RunHiddenConsole.exe" "ThisDirPath/php5.6/php-cgi.exe" -b 127.0.0.1:9000 -c "ThisDirPath/php5.6/php.ini"