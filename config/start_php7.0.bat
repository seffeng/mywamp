@ECHO OFF
ECHO Starting Php-Cgi, please wait ...
"ThisDirPath/svr/RunHiddenConsole.exe" "ThisDirPath/php7.0/php-cgi.exe" -b 127.0.0.1:9000 -c "ThisDirPath/php7.0/php.ini"