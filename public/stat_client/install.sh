# 下载被控端程序
wget -N -P /etc https://my.liu680.top/stat_client/stat_client
# 访问被控端目录
cd /etc
# 给予被控端程序755权限
chmod -R 755 stat_client
# 下载启动配置文件
wget -N -P /usr/lib/systemd/system/ https://my.liu680.top/stat_client/stat_client.service
# 编辑启动配置文件
vi /usr/lib/systemd/system/stat_client.service
# 更新配置
systemctl daemon-reload
# 启动服务
systemctl start stat_client
# 设置开机启动
systemctl enable stat_client