# running an Ethereum validator under Ubuntu
Tested on ubuntu 20.04.01  
geth + lighthouse  
in order to setup env, run    
`./install.sh`  
then to start geth:
`sudo systemctl start geth`  
start lighthouse beacon node:  
`sudo systemctl start lightousebeacon`  
start lighthouse validator:  
`sudo systemctl start lightousevalidator`  
only non censoring mev-boost relays  
