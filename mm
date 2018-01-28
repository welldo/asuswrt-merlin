#! /bin/sh
cd ~/asuswrt-merlin/release/src-rt-7.14.114.x/src
date > ~/m_$(date +%m%d).log
romname=k3__380.69_1_$(date +%m%d).trx
make -j1 V=s rt-ac3100  >> ~/m_$(date +%m%d).log
if [ -f ./image/RT-AC3100_380.69_1.trx ]; then
mv  ~/asuswrt-merlin/release/src-rt-7.14.114.x/src/image/RT-AC3100_380.69_1.trx ~/$romname
echo "move  images/psg1218_3.4.3.9-099.trx TO /root/$romname "  >> ~/m_$(date +%m%d).log
fi
if [ -f /root/$romname ];then
   swaks --to welldo@189.cn --attach ~/m_$(date +%m%d).log
fi

