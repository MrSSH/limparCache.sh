# limparCache.sh
#!/bin/bash
cat -n /etc/issue |grep 1 |cut -d' ' -f6,7,8 |sed 's/1//' |sed 's/      //' > /etc/so
echo -e "\033[1;31mPARA LIMPAR O CACHE DE UM ENTER!\033[0m"
read -p "" ip


echo "Limpando o Cache e Swap..."
echo 3 > /proc/sys/vm/drop_caches
sysctl -w vm.drop_caches=3
swapoff -a && swapon -a
clear

service ssh restart & service squid3 restart
clear

echo -e "\033[01;31mLimpeza do Cache e Swap concluida\033[0m"

echo -e "\033[01;31mSCRIPT BY: @MrCoppens\033[0m"
