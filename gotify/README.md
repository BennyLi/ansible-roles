# Gotify 💬 - Ansible Role 🔧

> a simple server for sending and receiving messages
> _--- Source: https://gotify.net (2022-06-28)_

This Ansible role will setup a Gotify instance with the help of [Docker](https://www.docker.com) and [Docker Compose](https://docs.docker.com/compose/), including a [MariaDB](https://mariadb.org) container as the database and [Traefik](https://traefik.io/traefik/) integration for the reverse proxy with SSL support. If you like, there is also a config file for [Dnsmasq](https://dnsmasq.org) / [Pi-hole](https://pi-hole.net) to setup a local DNS resolution.

## ⚠ READ THIS CAREFULLY ⚠

This Ansible role is part of my distributed Ansible workflow and will not work easily on it's own.
Please take a look at the [Ansible Playbook Skeleton](https://github.com/BennyLi/ansible-playbook-skeleton) repository to get more information on this.

## Where are the config files? 🔍

- All variables used in this role are defined in `defaults/main.yml`.
- The `docker-compose.yml` file is placed inside my [dockerfiles](https://github.com/BennyLi/dockerfiles/tree/master/gotify) repo.
- My personal `.env` and `gotify.traefik.yml` files can be found in my [.dotfiles](https://github.com/BennyLi/dotfiles/tree/main/gotify) repo.

## Batteries included! 🔋


