# Demo Sigec

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
