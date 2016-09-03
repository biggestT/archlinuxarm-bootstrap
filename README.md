## BigT infrastructure

### Setup Raspberry

- Follow install guide over at [archlinuxarm] (Don't open up any ports to WAN)
- Add machine's LAN IP to inventory in group torcloud-local

- Make machine ready for basic ansible tasks:
``` bash
ansible-playbook -u alarm plays/rawarch.yml -kK 
SSH password: alarm
SUDO password: root
```
- Setup your user and its key based SSH access to the machine
``` bash
ansible-playbook -u alarm plays/remote-base-access.yml -kK 
SSH password: alarm
SUDO password: root
```

- Harden machine before opening up for access outside your LAN
``` bash
ansible-playbook plays/remote-harden.yml 
```

- Enable routing of  port 22 from Internet to the Raspberry's LAN IP  in your router's admin panel


[archlinuxarm]: https://archlinuxarm.org/
