# 🔐 Psono - Open Source Self Hosted Password Manager

This Ansible Role will install a [Psono](https://psono.com) stack with the help of Docker on your server.

## ❗ Pre-conditions

For this to work you need to have [Docker](https://docs.docker.com/engine/) and [docker-compose](https://docs.docker.com/compose/) already installed on your server.
The components of Ansible used in this role also depend on the Python packages [Docker SDK for Python](https://pypi.org/project/docker/) and [PyYAML](https://pypi.org/project/PyYAML/) installed on your server.

## 🔋 Included parts

With this role you'll get

- A [Postgres DB](https://doc.psono.com/admin/installation/install-postgres-db.html) prepared for Psono
- The [Psono Server - Community Edition](https://doc.psono.com/admin/installation/install-server-ce.html)
- The [Psono Webclient](https://doc.psono.com/admin/installation/install-webclient.html)
- The [Psono Admin Webclient](https://doc.psono.com/admin/installation/install-admin-webclient.html)

This setup is prepared to run behind a [Traefik](https://traefik.io) reverse proxy. If you have already one running on your server, just configure your domains in the variables file (see `/defaults/main.yml` file) and Traefik will pick it up for you.
_For safety reasons, the Traefik configuration will not allow access from outside a defined IP whitelist! Check the config variable `traefik_ip_whitelist` for that._

## 🔧 Usage examples

1. Setup your Ansible Playbook like described in the official [documentation](https://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html).
2. Add this repo as a submodule beside your other roles with `git submodule add https://github.com/BennyLi/ansible-roles.git roles-github`
3. Add the path to your `ansible.cfg`. _(See below for details)_
4. Add the `psono` role to your playbook and you are good to go!

### 🔧 Add roles path to your ansible.cfg

If you not yet have it, create a new `ansible.cfg` file inside the root of your playbook.
The content of this file should then look like this:

```cfg
[defaults]
roles_path=./roles:./roles-github
```

Now Ansible should pick up the roles from both folders.

### 🏷 Tags

- `psono` - Runs all tasks _(some may skip due to your configuration)_
- `psono:backup` - Runs only the backup related tasks
- `psono:restore` - Runs only the restore from latest backup related tasks

## 💡 Things I like to add

- The [Psono Fileserver](https://doc.psono.com/admin/installation/install-fileserver.html)
- Add 2-factor Auth support
