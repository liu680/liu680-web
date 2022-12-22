echo -e "\033[33m脚本自运行开始\033[0m"
echo -e "\033[33m1.开始解锁(1/3)\033[0m"
chattr -i /www/server/panel/data/plugin.json > /dev/null 2>&1
rm -r /www/server/panel/data/plugin.json > /dev/null 2>&1
wget -N -P /www/server/panel/data https://liu680.vercel.app/BTPanel-v7.7.0/Crack/plugin.json > /dev/null 2>&1
chattr +i /www/server/panel/data/plugin.json > /dev/null 2>&1
bt 1 > /dev/null 2>&1
echo -e "\033[33m2.开始解锁(2/3)\033[0m"
chattr -i /www/server/panel/data/repair.json > /dev/null 2>&1
rm -r /www/server/panel/data/repair.json > /dev/null 2>&1
wget -N -P /www/server/panel/data https://liu680.vercel.app/BTPanel-v7.7.0/Crack/repair.json > /dev/null 2>&1
chattr +i /www/server/panel/data/repair.json > /dev/null 2>&1
bt 1 > /dev/null 2>&1
echo -e "\033[33m3.开始解锁(3/3)\033[0m"
rm -r /www/server/panel/class/panelPlugin.py > /dev/null 2>&1
wget -N -P /www/server/panel/class https://liu680.vercel.app/BTPanel-v7.7.0/Crack/panelPlugin.py > /dev/null 2>&1
bt 1 > /dev/null 2>&1
echo -e "\033[33m4.开始屏蔽更新与修复按钮\033[0m"
rm -r /www/server/panel/BTPanel/templates/default/index.html > /dev/null 2>&1
wget -N -P /www/server/panel/BTPanel/templates/default https://liu680.vercel.app/BTPanel-v7.7.0/Crack/index.html > /dev/null 2>&1
bt 1 > /dev/null 2>&1
echo -e "\033[33m5.开始优化面板底部文字\033[0m"
rm -r /www/server/panel/BTPanel/templates/default/layout.html > /dev/null 2>&1
wget -N -P /www/server/panel/BTPanel/templates/default https://liu680.vercel.app/BTPanel-v7.7.0/Crack/layout.html > /dev/null 2>&1
bt 1 > /dev/null 2>&1
echo -e "\033[33m6.阻断服务器与宝塔链接\033[0m"
echo "0.0.0.0 www.bt.cn" >> /etc/hosts
echo -e "\033[33m7.重启宝塔面板\033[0m"
bt 1 > /dev/null 2>&1
echo -e "\033[33m优化脚本运行结束，感谢使用\033[0m"