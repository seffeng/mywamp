@ECHO OFF
"ThisDirPath/redis/redis-server.exe" --service-install "ThisDirPath/redis/redis.windows.conf"
"ThisDirPath/redis/redis-server.exe" --service-start
