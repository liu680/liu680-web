echo "请选择需要安装的服务器架构"
select i in aarch64 x86_64 退出
do
    case $i in
        aarch64)
        #安装开始
        echo -e "\033[33m(aarch64)架构安装开始\033[0m"
        # 下载被控端程序
        echo -e "\033[33m①.配置被控端程序\033[0m"
        wget -c "stat_client"  -N -P /etc https://my.liu680.top/stat_client/client-aarch64 > /dev/null 2>&1
        # 访问被控端目录
        cd /etc
        # 给予被控端程序755权限
        chmod -R 755 stat_client
        # 下载启动配置文件
        echo -e "\033[33m②.开始配置启动文件\033[0m"
        wget -N -P /usr/lib/systemd/system/ https://my.liu680.top/stat_client/stat_client.service > /dev/null 2>&1
        # 编辑启动配置文件
        vi +11 /usr/lib/systemd/system/stat_client.service
        # 安装流量统计组件
        echo -e "\033[33m③.安装流量统计组件\033[0m"
        sudo apt install -y vnstat > /dev/null 2>&1
        echo -e "\033[33m④.流量统计组件安装完成\033[0m"
        # 更新配置
        echo -e "\033[33m⑤.开始配置开机启动\033[0m"
        systemctl daemon-reload > /dev/null 2>&1
        # 启动服务
        systemctl start stat_client > /dev/null 2>&1
        # 设置开机启动
        systemctl enable stat_client > /dev/null 2>&1
        echo -e "\033[33m⑥.开机启动配置完成\033[0m"
        # 安装结束
        echo -e "\033[33m安装完毕\033[0m"
        ;;
        x86_64)
        #安装开始
        echo -e "\033[33m(x86_64)架构安装开始\033[0m"
        # 下载被控端程序
        echo -e "\033[33m①.配置被控端程序\033[0m"
        wget -c "stat_client"  -N -P /etc https://my.liu680.top/stat_client/client-x86_64 > /dev/null 2>&1
        # 访问被控端目录
        cd /etc
        # 给予被控端程序755权限
        chmod -R 755 stat_client
        # 下载启动配置文件
        echo -e "\033[33m②.开始配置启动文件\033[0m"
        wget -N -P /usr/lib/systemd/system/ https://my.liu680.top/stat_client/stat_client.service > /dev/null 2>&1
        # 编辑启动配置文件
        vi +11 /usr/lib/systemd/system/stat_client.service
        # 安装流量统计组件
        echo -e "\033[33m③.安装流量统计组件\033[0m"
        sudo apt install -y vnstat > /dev/null 2>&1
        echo -e "\033[33m④.流量统计组件安装完成\033[0m"
        # 更新配置
        echo -e "\033[33m⑤.开始配置开机启动\033[0m"
        systemctl daemon-reload > /dev/null 2>&1
        # 启动服务
        systemctl start stat_client > /dev/null 2>&1
        # 设置开机启动
        systemctl enable stat_client > /dev/null 2>&1
        echo -e "\033[33m⑥.开机启动配置完成\033[0m"
        # 安装结束
        echo -e "\033[33m安装完毕\033[0m"
        ;;
        退出)
        echo "脚本执行完成"
        exit
    esac
done