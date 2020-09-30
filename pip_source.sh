 
 # ~/.pip/pip.conf
mkdir ~/.pip
touch ~/.pip/pip.conf
cat >> ~/.pip/pip.conf <<EOF
[global]
index-url = https://pypi.douban.com/simple
EOF
