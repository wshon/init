# init

## Set sshd port
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/muumlover/init/master/sshd_port.sh)"
sh -c "$(wget https://raw.githubusercontent.com/muumlover/init/master/sshd_port.sh -O -)"

wget -qO- https://raw.githubusercontent.com/muumlover/init/master/sshd_port.sh | bash 
curl https://raw.githubusercontent.com/muumlover/init/master/sshd_port.sh | sh

curl https://raw.fastgit.org/muumlover/init/master/sshd_port.sh | sh
curl https://raw.fastgit.org/muumlover/init/master/rpi_apt.sh | sudo sh
```

# Tool
`apt install ca-certificates`
## set nginx source

`bash <(curl -sL https://github.com/muumlover/Tool/raw/master/nginx_source.sh)`

`curl -sL https://github.com/muumlover/Tool/raw/master/nginx_source.sh | bash`

`wget -qO- https://github.com/muumlover/Tool/raw/master/nginx_source.sh | bash`
