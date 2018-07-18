Vagrant dev machine
=========================================

# Getting Started

1. [Download and install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [Download and install Vagrant](http://www.vagrantup.com/downloads.html).
3. Go to [releases](https://github.com/martinprobson/vagrant-dev-machine/releases) and download and extract the latest source of this project.
5. In your terminal change your directory into the project directory (i.e. `cd vagrant-dev-machine` )
6. Run ```vagrant up``` to create the VM.
7. Execute ```vagrant ssh``` to login to the VM or login to XFCE via virtualbox.
8. You will need to shutdown (`shutdown -P now`) and restart (`vagrant up`) to get a graphical prompt via virtualbox - logon using vagrant/vagrant.

 **NOTE** This machine will take a significant time to provision initially whilst it downloads and builds the packages required.

# User id

The user id of the VM is `vagrant` with a password of `vagrant`.

# Shared Folder

Vagrant automatically mounts the folder containing the Vagrant file from the host machine into
the guest machine as `/vagrant` inside the guest.


# Managment of Vagrant VM

To stop the VM and preserve all setup/data within the VM: -

```
vagrant halt
```

or

```
vagrant suspend
```

Issue a `vagrant up` command again to restart the VM from where you left off.

To completely **wipe** the VM so that `vagrant up` command gives you a fresh machine: -

```
vagrant destroy
```

Then issue `vagrant up` command as usual.

# VIM

A nicer version of vim is also installed, use `:PluginInstall` to install the plugins from within vim itself: -

- indentpython.vim Proper indentation for Python source.
- vim-scala scala synatax highlighting and indentation.
- nerdtree file manager (CTRL-N).
- vim-airline nice status line.
- vim-airline-themes themes for above.
- ctrl-p - ctrl-p fuzzy file matcher.
- vim-instant-markdown vim markdown syntax and previewer.

# Known Issues/To Do

1. Running `vagrant provision` multiple times can cause issues - need to fix.
3. You may need to manually set video memory to > 16Mb in virtualbox gui in order to allow full screen operation. 

# Credits

This config is based mostly on [martinprobson vagrant-dev-machine](https://github.com/martinprobson/vagrant-dev-machine)
