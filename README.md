# The New E-Mail Protocol (NEMP) - server and client software installer

## Related repositories

- [**NEMP Protocol**](https://github.com/libersoft-org/nemp-installer) - NEMP protocol documentation
- [**NEMP Installer**](https://github.com/libersoft-org/nemp-installer) - NEMP installer for server and client software
- [**NEMP Server**](https://github.com/libersoft-org/nemp-server) - NEMP server software
- [**NEMP Web Admin**](https://github.com/libersoft-org/nemp-admin-web) - NEMP administration web software
- [**NEMP Web Client**](https://github.com/libersoft-org/nemp-client-web) - NEMP client web software
- [**WebSocket Console**](https://github.com/libersoft-org/websocket-console) - WebSocket developer console web software

## Installation

These are the instructions how to download this installer for the different Linux distributions.

**IMPORTANT NOTE**: It is recommended to install this software on a clean OS installation, otherwise it may cause that other software previously installed on your server could stop working properly due to this. You are using this software at your own risk.

### Debian / Ubuntu Linux

Log in as "root" on your server and run the following commands to download the necessary dependencies and the latest version of this installer from GitHub:

```console
cd /root/
apt update
apt -y upgrade
apt -y install git
git clone https://github.com/libersoft-org/nemp-install.git
cd nemp-install
./install.sh
```

### CentOS / RHEL / Fedora Linux

Log in as "root" on your server and run the following commands to download the necessary dependencies and the latest version of this software from GitHub:

```console
cd /root/
dnf -y update
dnf -y install git
git clone https://github.com/libersoft-org/nemp-install.git
cd nemp-install
./install.sh
```

## License

This software is developed as an opensource under [**Unlicense**](./LICENSE).

## Donations

Donations are important to support the ongoing development and maintenance of this open source project. Your contributions help us cover costs and support our team in improving this software. We appreciate any support you can offer.

To find out how to donate our project, please navigate here: **https://libersoft.org/donations**

Thank you for being a part of this project's success!
