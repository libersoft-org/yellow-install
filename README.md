# Yellow Installer

[![Created Badge](https://badges.pufler.dev/created/libersoft-org/yellow-install)](https://badges.pufler.dev) [![Updated Badge](https://badges.pufler.dev/updated/libersoft-org/yellow-install)](https://badges.pufler.dev) [![Visits Badge](https://badges.pufler.dev/visits/libersoft-org/yellow-install)](https://badges.pufler.dev)

This repository helps you to easily install [**Yellow**](https://yellow.libersoft.org) software on your server.

If you just want to get your free [**Yellow**](https://yellow.libersoft.org) account hosted on our server, please navigate to:

[![YellowNet.io](https://raw.githubusercontent.com/libersoft-org/odtp-documentation/main/logo.png)](https://yellownet.io)

## Related repositories

- [**ODTP Protocol**](https://github.com/libersoft-org/odtp-protocol) - ODTP protocol documentation
- [**Yellow Install**](https://github.com/libersoft-org/yellow-install) - Installer for Yellow software
- [**Yellow Server**](https://github.com/libersoft-org/yellow-server) - Server implementation of ODTP protocol
- [**Yellow Command Line Admin**](https://github.com/libersoft-org/yellow-admin-web) - Web administration software for Yellow Server
- [**Yellow Web Admin**](https://github.com/libersoft-org/yellow-admin-web) - Web administration software for Yellow Server
- [**Yellow Web Client**](https://github.com/libersoft-org/yellow-client-web) - Web client implementation of Yellow protocol
- [**WebSocket Developer Console**](https://github.com/libersoft-org/websocket-console) - Web application that helps developers to communicate easily with Yellow Server using JSON commands

## Installation

These are the instructions how to download this installer for the different Linux distributions.

**IMPORTANT NOTE**: It is recommended to install this software on a clean OS installation, otherwise it may cause that other software previously installed on your server could stop working properly due to this. You are using this software at your own risk.

### Debian / Ubuntu Linux

Log in as "root" on your server and run the following commands to download the necessary dependencies and the latest version of this installer from GitHub:

```console
cd /root/
apt update
apt -y upgrade
apt -y install git curl
git clone https://github.com/libersoft-org/yellow-install.git
cd yellow-install
./install.sh
```

### CentOS / RHEL / Fedora Linux

Log in as "root" on your server and run the following commands to download the necessary dependencies and the latest version of this software from GitHub:

```console
cd /root/
dnf -y update
dnf -y install git curl
git clone https://github.com/libersoft-org/yellow-install.git
cd yellow-install
./install.sh
```

## License

This software is developed as an open source under [**Unlicense**](./LICENSE).

## Donations

Donations are important to support the ongoing development and maintenance of our open source projects. Your contributions help us cover costs and support our team in improving our software. We appreciate any support you can offer.

To find out how to donate our projects, please navigate here:

[![Donate](https://raw.githubusercontent.com/libersoft-org/documents/main/donate.png)](https://libersoft.org/donations)

Thank you for being a part of our projects' success!

## Star history

[![Star History Chart](https://api.star-history.com/svg?repos=libersoft-org/yellow-install&type=Date)](https://star-history.com/#libersoft-org/yellow-install&Date)
