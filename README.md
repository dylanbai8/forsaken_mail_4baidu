https://github.com/denghongcai/forsaken-mail

================

卸载 nodejs
```
apt remove nodejs npm
```
安装 nodejs
```
apt install nodejs npm
```
查看25端口占用
```
lsof -i:25
```


注意要把源码放在非wwwroot目录，避免权限和用户问题。

安装
```
cd 到目录

npm install
```
启动
```
npm start
```

生成docker
```
docker build -t denghongcai/forsaken-mail .
```

运行docker
```
docker run --name forsaken-mail -d -p 25:25 -p 3000:3000 denghongcai/forsaken-mail
```



访问地址：
```
http://localhost:3000
```







