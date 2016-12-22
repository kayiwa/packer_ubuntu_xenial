# packer_ubuntu_xenial
Packer Build For Ubuntu Xenial

This repo is a project that encapsulates [Packer](https://www.packer.io/) templates for building
[Vagrant](https://www.vagrantup.com/) base boxes. We use these boxes internally at Princeton University Libraries to automatically build our images.

### Using `packer`

Templates can still be built directly by `packer`

To build a template for all providers (VirtualBox, Fusion, Parallels):

    $ packer build ubuntu1604.json

To build a template only for a list of specific providers:

    $ packer build -only=virtualbox-iso ubuntu1604.json

If you want to use a another mirror site, use the `mirror` user variable.

    $ packer build -var 'mirror=http://some.local.mirror.edu/pub/Linux/ubuntu-cdimage/release' ubuntu1604.json

Congratulations! You now have box(es) in the ../builds directory that you can then add to Vagrant
