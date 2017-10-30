# MARVEL Virtual Machine

This repository contains the vagrant and ansible scripts to set up the "standard" MARVEL virtual machine.

## Prerequisites

- [vagrant](https://www.vagrantup.com/downloads.html)
- [virtualbox](https://www.virtualbox.org/wiki/Downloads)
- `pip install -r requirements.txt`

## Create Virtual Machine

```
vagrant plugin install vagrant-vbguest  # optional, improves interface
vagrant up  # build vm from scratch (takes some tens of minutes)
```

Note: So far tested only on Unix, but should work on Windows as well.

## Create image
```
bash create_image.sh
```

## Upload image
```
openstack object create marvel-vms marvel_vm_<version>.ova
openstack object create marvel-vms INSTALL_<version>.txt
```


## Useful commands

 * `vagrant provision --provision-with ansible`: re-run ansible scripts
 * `vagrant reload`: restart machine
 * `vagrant halt`: stop machine
 * ```
   vagrant ssh-config > vagrant-ssh  # inform ansible about ssh config
   ansible-playbook playbook.yml     # run ansible directly, add tags, ...
   ```
 * ```scp -F vagrant-ssh default:/path/on/vm  my/path```
