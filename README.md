# running an Ethereum validator under Ubuntu
Tested on ubuntu 20.04.01  
geth + lighthouse  
  
in order to setup env, run    
`./install.sh`  
then in $HOME run 
```
./update-geth
./update-lighthouse
```

to install & start syncing lightouse and geth  
  
Once geth and lighthouse installed you can  
start geth  
`sudo systemctl start geth`  
start lighthouse beacon node  
`sudo systemctl start lightousebeacon`  
start lighthouse validator (after importing your validator keys)  
`sudo systemctl start lightousevalidator`  
start mev-boost after installing docker (only non censoring mev-boost relays)  
`./mev-boost`  
  
  
In order to view logs:
`goeth` view geth logs  
`lighthousebeacon` view beacon logs  
`lighthousevalidator` view validator logs   
