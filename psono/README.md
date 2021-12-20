# 🔐 Psono - Open Source Self Hosted Password Manager

This Ansible Role will install a [Psono](https://psono.com) stack with docker on your server.
For this to work you need to have [Docker](https://docs.docker.com/engine/) and [docker-compose](https://docs.docker.com/compose/) installed on your server.

## 🔋 Included parts

With this role you'll get

- A [Postgres DB](https://doc.psono.com/admin/installation/install-postgres-db.html) prepared for Psono
- The [Psono Server - Community Edition](https://doc.psono.com/admin/installation/install-server-ce.html)
- The [Psono Webclient](https://doc.psono.com/admin/installation/install-webclient.html)
- The [Psono Admin Webclient](https://doc.psono.com/admin/installation/install-admin-webclient.html)

This setup is prepared to run behind a [Traefik]() reverse proxy. If you have already one running on your server, just configure your domains in the variables file (see `/defaults/main.yml` file) and Traefik will pick it up for you.
_For safety reasons, the Traefik configuration will not allow access from outside a defined IP whitelist! Check the config file for that._
