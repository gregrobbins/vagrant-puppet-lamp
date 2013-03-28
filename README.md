FLI dev server
==============

Virtual machine for FLI Magento development based on Vagrant and Puppet

Vagrant creates preconfigured virtual machines based on VirtualBox. Puppet provisions the virtual machine with required software for the applications to run correctly.

Follow this guide to install a local environment running the FLI Magento installation. After setup, you will have on your machine:
- a virtual machine running Ubuntu 12.04 x86 with LAMP
- a local directory "src" containing the FLI Magento repository. This will be your working directory in which you can modify code, skins, images, etc.
- all FLI sites will be accessible from your browser. You will have a reduced version of the current database snapshot but will by default not contain real client data, orders, site logs, etc.

Install required software:
- Download and install Git (http://git-scm.com/downloads). You may want to use GitHub's native applications:
  - http://mac.github.com/
  - http://windows.github.com/
- Download and install VirtualBox for your platform (https://www.virtualbox.org/wiki/Downloads)
- Download and install Vagrant (http://downloads.vagrantup.com/)

Get the virtual machine image:
- Log in to the VPN and download the Ubuntu virtual machine image located on Prometheus at /home/grobbins/precise32.box (600+ MB)
TODO: make this downloadable via HTTP and modify Vagrantfile to just get it

Get access to the FLI respositries:
- Create a GitHub account if you don't already have one
- Request that you be added to the "organization" ilfllc-dev.
- Log in to your GitHub account. From your dashboard page (https://github.com/) you should be able to switch account context and enter the ilfllc-dev page.

Clone the Git repositories:
- https://github.com/ilfllc-dev/vagrant-dev is the Vagrant configuration. Clone this first to somewhere on your hard drive to a directory called vagrant-dev.
- https://github.com/ilfllc-dev/magento-dev is the Magento repository. Clone this to a directory called "src" inside the vagrant-dev directory.

Setup and run the virtual machine:
- Enter the vagrant-dev directory and from the terminal, run "vagrant up" (this will take some time).
- The machine will be running on 192.168.10.200. You can access different services through that IP. For example if you want to use a MySQL client on your local machine you can connect it to 192.168.1.200:3306.

Edit your hosts file:
TODO: create hosts file with all FLI stores
In order to be able to access the Magento stores from your browser, you will need to add some lines to your hosts file.
`192.168.10.200 magento.dev`

Get the dev database:
TODO: create a user on Prometheus that allows dumping the db on demand.
You can get the dev database snapshot from Prometheus: /home/greg/fli.magento.dev.dump.sql.gz



Note: the src directory is linked to the webserver document root.

Note: default mysql username and password are root.

Note: mysql server is remotely accessible.

