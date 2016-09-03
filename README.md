## Raspberry Arch Linux bootstrapping with Ansible

It can be tedious to setup a basic environment on an Arch linux system. This playbook is meant to help get your raspberry up and running.

### Setup Raspberry

1. Follow install guide over at [archlinuxarm] (Don't open up any ports to WAN)

2. Add machine's LAN IP to inventory by running:
``` bash
./init-inventory.sh
```

3. Make machine ready for basic ansible tasks (e.g adds python):
``` bash
ansible-playbook -u alarm plays/rawarch.yml -kK 
SSH password: alarm
SUDO password: root
```
4. Setup your user and its key based SSH access to the machine
``` bash
ansible-playbook -u alarm plays/remote-base-access.yml -kK 
SSH password: alarm
SUDO password: root
```

5. Harden machine before opening up for access outside your LAN
``` bash
ansible-playbook plays/remote-harden.yml
```

6. Finally enable routing of  port 22 from Internet to the Raspberry's LAN IP  in your router's admin panel


[archlinuxarm]: https://archlinuxarm.org/
