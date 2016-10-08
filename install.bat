@echo off
call stop.bat
cls

set rp=ThisDirPath
set ep=%cd:\=/%

echo ======================================
echo ============正在安装apache============
echo ======================================
echo 正在配置apache配置文件 httpd7.0.conf
set fl=config\httpd7.0.conf
call config\fun.bat
move /y my_tmp.txt apache\2.4\conf\httpd7.0.conf

echo 正在配置apache配置文件 httpd5.6.conf
set fl=config\httpd5.6.conf
call config\fun.bat
move /y my_tmp.txt apache\2.4\conf\httpd5.6.conf

echo 正在配置apache配置文件 httpd5.2.conf
set fl=config\httpd5.2.conf
call config\fun.bat
move /y my_tmp.txt apache\2.2\conf\httpd5.2.conf

echo 正在配置apache配置文件 httpd_temp.conf
set fl=config\httpd_temp.conf
call config\fun.bat
move /y my_tmp.txt apache\conf\_http.conf

echo ======================================
echo 正在配置文件 start_apachephp7.0.bat
set fl=config\start_apachephp7.0.bat
call config\fun.bat
move /y my_tmp.txt apache\start_apachephp7.0.bat

echo 正在配置文件 start_apachephp5.6.bat
set fl=config\start_apachephp5.6.bat
call config\fun.bat
move /y my_tmp.txt apache\start_apachephp5.6.bat

echo 正在配置文件 start_apachephp5.2.bat
set fl=config\start_apachephp5.2.bat
call config\fun.bat
move /y my_tmp.txt apache\start_apachephp5.2.bat

echo 正在配置文件 stop_apache.bat
set fl=config\stop_apache.bat
call config\fun.bat
move /y my_tmp.txt apache\stop_apache.bat

echo ======================================
echo ============正在安装Mysql=============
echo ======================================
echo 正在配置Mysql配置文件 my.ini
set fl=config\my.ini
call config\fun.bat
move /y my_tmp.txt mysql\5.7\my.ini

echo ======================================
echo 正在配置文件 start_mysql5.7.bat
set fl=config\start_mysql5.7.bat
call config\fun.bat
move /y my_tmp.txt mysql\start_mysql5.7.bat

echo 正在配置文件 stop_mysql.bat
set fl=config\stop_mysql.bat
call config\fun.bat
move /y my_tmp.txt mysql\stop_mysql.bat

echo ======================================
echo ==============正在安装php=============
echo ======================================
echo 正在配置Php配置文件 php7.0.ini
set fl=config\php7.0.ini
call config\fun.bat
move /y my_tmp.txt php\7.0\php.ini

echo 正在配置Php配置文件 php5.6.ini
set fl=config\php5.6.ini
call config\fun.bat
move /y my_tmp.txt php\5.6\php.ini

echo 正在配置Php配置文件 php5.2.ini
set fl=config\php5.2.ini
call config\fun.bat
move /y my_tmp.txt php\5.2\php.ini

echo ======================================
echo 正在配置文件 start_php7.0.bat
set fl=config\start_php7.0.bat
call config\fun.bat
move /y my_tmp.txt php\start_php7.0.bat

echo 正在配置文件 stop_php.bat
set fl=config\stop_php.bat
call config\fun.bat
move /y my_tmp.txt php\stop_php.bat

echo ======================================
echo ============正在安装memcached=========
echo ======================================
echo 正在配置文件 start_memcached.bat
set fl=config\start_memcached.bat
call config\fun.bat
move /y my_tmp.txt memcached\start_memcached.bat

echo 正在配置文件 stop_memcached.bat
set fl=config\stop_memcached.bat
call config\fun.bat
move /y my_tmp.txt memcached\stop_memcached.bat

echo 正在配置文件 restart_memcached.bat
set fl=config\restart_memcached.bat
call config\fun.bat
move /y my_tmp.txt memcached\restart_memcached.bat

echo ======================================
echo ============正在安装redis=========
echo ======================================
echo 正在配置文件 start_redis.bat
set fl=config\start_redis.bat
call config\fun.bat
move /y my_tmp.txt redis\start_redis.bat

echo 正在配置文件 stop_redis.bat
set fl=config\stop_redis.bat
call config\fun.bat
move /y my_tmp.txt redis\stop_redis.bat

echo 正在配置文件 restart_redis.bat
set fl=config\restart_redis.bat
call config\fun.bat
move /y my_tmp.txt redis\restart_redis.bat

echo ======================================
echo ============正在配置全局文件==========
echo ======================================
echo 正在配置启动文件 start.bat
set fl=config\start.bat
call config\fun.bat
move /y my_tmp.txt start.bat

echo 正在配置停止文件 stop.bat
set fl=config\stop.bat
call config\fun.bat
move /y my_tmp.txt stop.bat

echo 正在配置重启动文件 restart.bat
set fl=config\restart.bat
call config\fun.bat
move /y my_tmp.txt restart.bat

echo ======================================
echo 正在配置文件 dll
if exist %systemroot%\SysWOW64\ (
    if not exist %systemroot%\SysWOW64\msvcr71.dll ( copy config\msvcr71.dll %systemroot%\SysWOW64\ /y )
    if not exist %systemroot%\SysWOW64\msvcr100.dll ( copy config\msvcr100.dll %systemroot%\SysWOW64\ /y )
) else (
    if not exist %systemroot%\System32\msvcr71.dll ( copy config\msvcr71.dll %systemroot%\System32\ /y )
    if not exist %systemroot%\System32\msvcr100.dll ( copy config\msvcr100.dll %systemroot%\System32\ /y )
)

echo 正在配置 快捷图标
set fl=config\link.ini
call config\fun.bat
move /y my_tmp.txt Link.bat
call Link.bat
del Link.bat
echo ===============安装完成===============
pause