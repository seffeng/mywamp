@echo off
call stop.bat
cls

set rp=ThisDirPath
set ep=%cd:\=/%

echo ======================================
echo ============���ڰ�װapache============
echo ======================================
echo ��������apache�����ļ� httpd7.0.conf
set fl=config\httpd7.0.conf
call config\fun.bat
move /y my_tmp.txt apache2\conf\httpd7.0.conf

echo ��������apache�����ļ� httpd_temp.conf
set fl=config\httpd_temp.conf
call config\fun.bat
move /y my_tmp.txt apache2\conf\www\_http.conf

echo ======================================
echo ���������ļ� start_apachephp7.0.bat
set fl=config\start_apachephp7.0.bat
call config\fun.bat
move /y my_tmp.txt apache2\start_apachephp7.0.bat

echo ���������ļ� stop_apache.bat
set fl=config\stop_apache.bat
call config\fun.bat
move /y my_tmp.txt apache2\stop_apache.bat

echo ======================================
echo ============���ڰ�װMysql=============
echo ======================================
echo ��������Mysql5�����ļ� my.ini
set fl=config\my.ini
call config\fun.bat
move /y my_tmp.txt mysql5\my.ini

echo ======================================
echo ���������ļ� start_mysql5.bat
set fl=config\start_mysql5.bat
call config\fun.bat
move /y my_tmp.txt mysql5\start_mysql5.bat

echo ���������ļ� stop_mysql5.bat
set fl=config\stop_mysql5.bat
call config\fun.bat
move /y my_tmp.txt mysql5\stop_mysql5.bat

echo ======================================
echo ==============���ڰ�װphp=============
echo ======================================
echo ��������Php�����ļ� php7.0.ini
set fl=config\php7.0.ini
call config\fun.bat
move /y my_tmp.txt php7.0\php.ini

echo ======================================
echo ���������ļ� start_php7.0.bat
set fl=config\start_php7.0.bat
call config\fun.bat
move /y my_tmp.txt php7.0\start_php.bat

echo ���������ļ� stop_php.bat
set fl=config\stop_php.bat
call config\fun.bat
move /y my_tmp.txt php7.0\stop_php.bat

echo ======================================
echo ============���ڰ�װmemcached=========
echo ======================================
echo ���������ļ� start_memcached.bat
set fl=config\start_memcached.bat
call config\fun.bat
move /y my_tmp.txt memcached\start_memcached.bat

echo ���������ļ� stop_memcached.bat
set fl=config\stop_memcached.bat
call config\fun.bat
move /y my_tmp.txt memcached\stop_memcached.bat

echo ���������ļ� restart_memcached.bat
set fl=config\restart_memcached.bat
call config\fun.bat
move /y my_tmp.txt memcached\restart_memcached.bat

echo ======================================
echo ============���ڰ�װredis=========
echo ======================================
echo ���������ļ� start_redis.bat
set fl=config\start_redis.bat
call config\fun.bat
move /y my_tmp.txt redis\start_redis.bat

echo ���������ļ� stop_redis.bat
set fl=config\stop_redis.bat
call config\fun.bat
move /y my_tmp.txt redis\stop_redis.bat

echo ���������ļ� restart_redis.bat
set fl=config\restart_redis.bat
call config\fun.bat
move /y my_tmp.txt redis\restart_redis.bat

echo ======================================
echo ============��������ȫ���ļ�==========
echo ======================================
echo �������������ļ� start.bat
set fl=config\start.bat
call config\fun.bat
move /y my_tmp.txt start.bat

echo ��������ֹͣ�ļ� stop.bat
set fl=config\stop.bat
call config\fun.bat
move /y my_tmp.txt stop.bat

echo ���������������ļ� restart.bat
set fl=config\restart.bat
call config\fun.bat
move /y my_tmp.txt restart.bat

echo ======================================
echo ���������ļ� dll
if exist %systemroot%\SysWOW64\ (
    if not exist %systemroot%\SysWOW64\msvcr71.dll ( copy config\msvcr71.dll %systemroot%\SysWOW64\ /y )
    if not exist %systemroot%\SysWOW64\msvcr100.dll ( copy config\msvcr100.dll %systemroot%\SysWOW64\ /y )
) else (
    if not exist %systemroot%\System32\msvcr71.dll ( copy config\msvcr71.dll %systemroot%\System32\ /y )
    if not exist %systemroot%\System32\msvcr100.dll ( copy config\msvcr100.dll %systemroot%\System32\ /y )
)

echo �������� ���ͼ��
set fl=config\link.ini
call config\fun.bat
move /y my_tmp.txt Link.bat
call Link.bat
del Link.bat
echo ===============��װ���===============
pause