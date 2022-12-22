**Centos/Ubuntu/Debian安装命令 独立运行环境（py3.7）：**

```Bash
curl -sSO https://gitee.com/Liu680/btpanel-v7.7.0/raw/master/install/install_panel.sh && bash install_panel.sh
```

&nbsp;

**如果遇到重启后宝塔乱码 请DD最新版Debian系统然后修改语言区域：**


```Bash
nano /etc/default/locale
```

```Bash
LANG=en_US.UTF-8
```

修改后保存文件，重启VPS即可。