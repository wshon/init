# init

## Set sshd port
```bash
wget -qO- https://raw.githubusercontent.com/muumlover/init/master/sshd_port.sh | bash 
curl https://raw.githubusercontent.com/muumlover/init/master/sshd_port.sh | sh
```

## Set pip source
```bash
wget -qO- https://raw.githubusercontent.com/muumlover/init/master/pip_source.sh | bash 
curl https://raw.githubusercontent.com/muumlover/init/master/pip_source.sh | sh
```

## Set debian source
```bash
wget -qO- https://raw.githubusercontent.com/muumlover/init/master/debian_source.sh | bash 
curl https://raw.githubusercontent.com/muumlover/init/master/debian_source.sh | sh
```

## AutoSet debian source
```bash
wget -qO- https://raw.githubusercontent.com/muumlover/init/master/auto_debian_apt_source.sh | bash 
curl https://raw.githubusercontent.com/muumlover/init/master/auto_debian_apt_source.sh | sh
```

# Tool
`apt install -y ca-certificates`
## set nginx source

`bash <(curl -sL https://github.com/muumlover/Tool/raw/master/nginx_source.sh)`

`curl -sL https://github.com/muumlover/Tool/raw/master/nginx_source.sh | bash`

`wget -qO- https://github.com/muumlover/Tool/raw/master/nginx_source.sh | bash`

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/muumlover/init/master/sshd_port.sh)"
sh -c "$(wget https://raw.githubusercontent.com/muumlover/init/master/sshd_port.sh -O -)"

curl https://raw.fastgit.org/muumlover/init/master/sshd_port.sh | sh
curl https://raw.fastgit.org/muumlover/init/master/rpi_apt.sh | sudo sh
```
