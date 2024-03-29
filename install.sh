#sudo apt update
sudo apt install -y jq
cp .bash_aliases $HOME
sudo cp geth.service /etc/systemd/system/geth.service
sudo cp lighthousebeacon.service /etc/systemd/system/lighthousebeacon.service
sudo cp lighthousevalidator.service /etc/systemd/system/lighthousevalidator.service
sudo cp erigon.service /etc/systemd/system/erigon.service
sudo systemctl daemon-reload
openssl rand -hex 32 | tr -d "\n" > "$HOME/jwt_secret"
sudo useradd --no-create-home --shell /bin/false lighthousevalidator
sudo useradd --no-create-home --shell /bin/false lighthousebeacon
sudo useradd --no-create-home --shell /bin/false goeth
sudo mkdir -p /var/lib/goethereum
sudo mkdir -p /var/lib/lighthouse/beacon-node
sudo mkdir -p /var/lib/lighthouse/validator
sudo cp $HOME/jwt_secret /var/lib/goethereum
sudo cp $HOME/jwt_secret /var/lib/lighthouse/beacon-node
sudo chown -R lighthousebeacon:lighthousebeacon /var/lib/lighthouse/beacon-node
sudo chown -R lighthousevalidator:lighthousevalidator /var/lib/lighthouse/validator
sudo chown -R goeth:goeth /var/lib/goethereum
cp update-geth update-lighthouse $HOME
chmod +x $HOME/update-geth
chmod +x $HOME/update-lighthouse

