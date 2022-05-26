#! /bin/bash

if [ "$(arch)" = "x86_64" ]; then
  apt-get update
  apt-get install gnupg2 -y
  apt-get install wget -y
  wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
  echo "deb https://packages.elastic.co/curator/5/debian9 stable main" >/etc/apt/sources.list.d/curator.list
else
  echo "deb http://tardis.tiny-vps.com/aarm/ stable main" >/etc/apt/sources.list.d/curator.list

  ln -sf /bin/* /usr/sbin/
  ln -sf /usr/bin/* /usr/sbin/
fi

apt-get update
apt-get install elasticsearch-curator -y
mkdir /curator
ln -s /usr/bin/curator /curator/curator