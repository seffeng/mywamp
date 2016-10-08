####1、软件环境：Mysql5.7.15；apache2.4.23；apache2.2.31；php5.2.17；php5.6.26；php7.0.11。

####2、目录名 mywamp，可以自己自行修改(请不要使用中文目录)；如果文件夹名称首字母为 t、n 等特殊字符的，请注意修改配置文件(*.conf|*.ini)和批处理文件(*.bat)中相关路径的 \ 为 / 。

####3、所有子目录名(如：apache、config、mysql、php......)请不要修改，否则会导致配置文件生成失败，从而安装失败。

####4、首次运行服务 或者 目录被更改 或者 重装系统 请运行 install.bat 来解决，会自动配置相关信息；并且会生成快捷启动停止图标。

####5、若 Apache 不能启动，可能是 php.exe 不能正常运行，可能原因：缺少 VCRUNTIME140.DLL，可安装 soft/VC14_redist_x86.exe 解决；另：php5.6 不能启动，请安装 soft/VC11_redist_x86.exe。

####6、若最后提示文件复制失败，请将以下文件复制到系统盘 C:\Windows\System32\ (32位系统) 或 C:\Windows\SysWOW64\ (64位系统)；若文件已存在，可以不覆盖；
    config\msvcr71.dll
    config\msvcr100.dll

####7、mysql默认密码为：root。

####8、memcache 的重启、启动、停止请以管理员身份运行。

####9、本程序不支持 Windows XP，Windows 2003；支持 Windows 7，Windows 2008 。

####10、注意：redis 可能不支持 x86 系统。

####11、若使用非 Administrator 帐号安装，建议 以管理员身份运行 命令提示符(cmd.exe)，然后进入 本文件夹目录后执行 call install.bat
    如：当前文件夹路径为 E:\mywamp，则；
    E:
    CD mywamp
    call install.bat

####12、PHP版本切换在 apache/ 文件夹里，先停止再启动。

####13、网站配置文件统一放在 apache/conf/ 文件夹，修改配置后需重启 apache，配置文件参考 apache/conf/_http.conf（此文件安装完成后才会生成）。

####14、更多版本[下载](http://pan.baidu.com/s/1sk0AYVN#path=%252Fsoftware%252Fweb_tool)。