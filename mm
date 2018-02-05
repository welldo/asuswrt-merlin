#! /bin/sh
begin_time=$(date "+%s")  
cd ~/asuswrt-merlin/release/src-rt-7.14.114.x/src
date > ~/m_$(date +%m%d).log
romname=k3__380.69_2_$(date +%m%d).trx
make -j1 V=s rt-ac3100  >> ~/m_$(date +%m%d).log
end_time=$(date "+%s")  
if [ -f ./image/RT-AC3100_380.69_2.trx ]; then
mv  ~/asuswrt-merlin/release/src-rt-7.14.114.x/src/image/RT-AC3100_380.69_1.trx ~/$romname
echo "move  ./image/RT-AC3100_380.69_2.trx TO ~/$romname "  >> ~/m_$(date +%m%d).log
fi
if [ -f ~/$romname ];then
swaks --to welldo@189.cn --header "Subject:Compile successfully - `date -R` " --body "escape time:`$(($end_time - $begin_time))`Seconds.` sed 3q ~/m_$(date +%m%d).log` `tail -n 11 ~/m_$(date +%m%d).log |sed 7q`" --attach ~/m_$(date +%m%d).log
fi

