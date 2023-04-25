# Demo Sigec

## Requirements

System requirements for Debian controller host:
```
python3
python3-dev
libvirt-dev
```

## Quickstart

Create python virtualenv, enable it, and install project dependencies:
```
virtualenv .venv
. .venv/bin/activate
pip install -r requirements.txt
ansible-galaxy collection install community.libvirt
```

It works!
```
ansible --version
ansible [core 2.14.5]
  config file = None
...
```


https://www.redhat.com/sysadmin/build-VM-fast-ansible

Start a nice user shell
```
curl -sL https://raw.githubusercontent.com/TheLocehiliosan/yadm/master/yadm | bash -s -- clone --bootstrap  https://github.com/were10/dotfiles-generic.git && bash
```
