# running an Ethereum validator under Ubuntu
Tested on ubuntu 20.04.01  
geth + lighthouse  
  
in order to setup env, run    
`./install.sh`  
then in $HOME run `./update-geth` and `./update-lighthouse` to install & start syncing lightouse and geth 
then to start geth  
`sudo systemctl start geth`  
start lighthouse beacon node  
`sudo systemctl start lightousebeacon`  
start lighthouse validator (after importing your validator keys)  
`sudo systemctl start lightousevalidator`  
start mev-boost after installing docker (only non censoring mev-boost relays)  
`./mev-boost`  
