# NEMP Installer

[![Created Badge](https://badges.pufler.dev/created/libersoft-org/nemp-install)](https://badges.pufler.dev) [![Updated Badge](https://badges.pufler.dev/updated/libersoft-org/nemp-install)](https://badges.pufler.dev) [![Visits Badge](https://badges.pufler.dev/visits/libersoft-org/nemp-install)](https://badges.pufler.dev)

This repository helps you to easily install NEMP Software on your server.

If you just want to get your free NEMP mailbox hosted on our server, please navigate to:

[![NEMP.io](https://raw.githubusercontent.com/libersoft-org/nemp-documentation/main/logo.png)](https://nemp.io)

## Related repositories

- [**NEMP Protocol**](https://github.com/libersoft-org/nemp-protocol) - NEMP protocol documentation
- [**NEMP Install**](https://github.com/libersoft-org/nemp-install) - Installer for NEMP server and client software
- [**NEMP Server**](https://github.com/libersoft-org/nemp-server) - Server implementation of NEMP protocol
- [**NEMP Web Admin**](https://github.com/libersoft-org/nemp-admin-web) - Web administration software for NEMP Server
- [**NEMP Web Client**](https://github.com/libersoft-org/nemp-client-web) - Web client implementation of NEMP protocol
- [**WebSocket Developer Console**](https://github.com/libersoft-org/websocket-console) - Web application that helps developers to communicate easily with NEMP Server using JSON commands

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
git clone https://github.com/libersoft-org/nemp-install.git
cd nemp-install
./install.sh
```

### CentOS / RHEL / Fedora Linux

Log in as "root" on your server and run the following commands to download the necessary dependencies and the latest version of this software from GitHub:

```console
cd /root/
dnf -y update
dnf -y install git curl
git clone https://github.com/libersoft-org/nemp-install.git
cd nemp-install
./install.sh
```

## License

This software is developed as an open source under [**Unlicense**](./LICENSE).

## Donations

Donations are important to support the ongoing development and maintenance of this open source project. Your contributions help us cover costs and support our team in improving this software. We appreciate any support you can offer.

To find out how to donate our project, please navigate here: **https://libersoft.org/donations**

Thank you for being a part of this project's success!

## Star history

[![Star History Chart](https://api.star-history.com/svg?repos=libersoft-org/nemp-install&type=Date)](https://star-history.com/#libersoft-org/nemp-install&Date)
