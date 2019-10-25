### 源码暂停更新。

####  1、软件环境：

Mysql5.7.28；apache2.4.41；php7.3.11；redis3.0.504。

#### 2、目录；

目录名 mywamp，可以自己自行修改(请不要使用中文目录)；如果文件夹名称首字母为 t、n 等特殊字符的，请注意修改配置文件(*.conf|*.ini)和批处理文件(*.bat)中相关路径的 \ 为 / 。

#### 3、子目录；

所有子目录名(如：apache、config、mysql、php......)请不要修改，否则会导致配置文件生成失败，从而安装失败。

#### 4、安装；

首次运行服务 或者 目录被更改 或者 重装系统 请运行 install.bat 来解决，会自动配置相关信息；并且会生成快捷启动停止图标。

#### 5、Apache 启动失败；

若 Apache 不能启动，可能是 php.exe 不能正常运行，可能原因：缺少 VCRUNTIME140.DLL，可安装 soft/vc14_redist.x64.exe 解决。

#### 6、Mysql 启动失败；

若 Mysql 不能启动，可能原因：缺少 MSVCR120.dll，请安装 soft/vc12_redist_x64.exe。

#### 7、mysql默认密码为：root。

#### 8、系统要求；

本程序只支持 Windows 7，Windows 2008，Windows 10，且只支持 x64 操作系统；若要支持 x86 系统，可自行下载 mysql、php、apache、vc_redist 等对应的 x86 版本替换。

#### 9、管理员安装；

若使用非 Administrator 帐号安装，建议 以管理员身份运行 命令提示符(cmd.exe)，然后进入 本文件夹目录后执行 
```
call install.bat
# 如：当前文件夹路径为 D:\mywamp，则；
D:
CD mywamp
call install.bat
```

#### 10、网站配置文件统一放在 apache/conf/ 文件夹，修改配置后需重启 apache，配置文件参考 apache/conf/_http.conf（此文件安装完成后才会生成）。

#### 11、更多版本[下载](https://pan.baidu.com/s/1i5PA2yT)。

