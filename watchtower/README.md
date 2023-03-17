# Watchtower 🚨 - Ansible Role 🔧

> A container-based solution for automating Docker container base image updates.
> _--- Source: https://containrrr.dev/watchtower/ (2022-06-28)_

// TODO: Gotify first !

This Ansible role will setup a Watchtower instance with the help of [Docker](https://www.docker.com) and [Docker Compose](https://docs.docker.com/compose/), [Traefik](https://traefik.io/traefik/) integration for the reverse proxy with SSL support. If you like, there is also a config file for [Dnsmasq](https://dnsmasq.org) / [Pi-hole](https://pi-hole.net) to setup a local DNS resolution.

## ⚠ READ THIS CAREFULLY ⚠

This Ansible role is part of my distributed Ansible workflow and will not work easily on it's own.
Please take a look at the [Ansible Playbook Skeleton](https://github.com/BennyLi/ansible-playbook-skeleton) repository to get more information on this.

## Where are the config files? 🔍

- All variables used in this role are defined in `defaults/main.yml`.
- The `docker-compose.yml` file is placed inside my [dockerfiles](https://github.com/BennyLi/dockerfiles/tree/master/vaultwarden) repo.
- My personal `.env` and `vaultwarden.traefik.yml` files can be found in my [.dotfiles](https://github.com/BennyLi/dotfiles/tree/main/vaultwarden) repo.

## Batteries included! 🔋

