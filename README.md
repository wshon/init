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
