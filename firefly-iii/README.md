# Firefly III 🐷 - Ansible Role 🔧

This Ansible role will setup a Firefly III instance, including the Maria DB backend, a Redis cache and Traefik integration.

## ⚠ READ THIS CAREFULLY ⚠

This Ansible role is part of my distributed Ansible workflow and will not work easily on it's own.
Please take a look at the [Ansible Playbook Skeleton](https://github.com/BennyLi/ansible-playbook-skeleton) repository to get more information on this.

## Where are the config files? 🔍

- All variables used in this role are defined in `defaults/main.yml`.
- The `docker-compose.yml` file is placed inside my [dockerfiles](https://github.com/BennyLi/dockerfiles/tree/master/firefly-iii) repo.
- The `.env` and `firefly.traefik.yml` files can be found in my [.dotfiles](https://github.com/BennyLi/dotfiles/tree/main/firefly-iii) repo.
