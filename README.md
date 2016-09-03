## Raspberry Arch Linux bootstrapping with Ansible

It can be tedious to setup an Arch linux system. This playbook is meant to help get your raspberry up and running. 

### Setup Raspberry

- Follow install guide over at [archlinuxarm] (Don't open up any ports to WAN)
- Add machine's LAN IP to inventory in group `[LAN]`

- Make machine ready for basic ansible tasks (e.g adds python):
``` bash
ansible-playbook -u alarm plays/rawarch.yml -kK 
SSH password: alarm
SUDO password: root
```
- Setup your user and its key based SSH access to the machine
``` bash
ansible-playbook -u alarm plays/remote-base-access.yml -e user_name=YOUR_USERNAME -kK 
SSH password: alarm
SUDO password: root
```

- Harden machine before opening up for access outside your LAN
``` bash
ansible-playbook plays/remote-harden.yml -e user_name=YOUR_USERNAME
```

- Enable routing of  port 22 from Internet to the Raspberry's LAN IP  in your router's admin panel


[archlinuxarm]: https://archlinuxarm.org/
