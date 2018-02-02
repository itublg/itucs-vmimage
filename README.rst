Installation Instructions (BLG102)
==================================

If you want to use your own computer for following the course and
doing the assignments, you will need to set up the environment required
for this course. Your options are outlined below.

Using VirtualBox and Vagrant
----------------------------

This is the simplest and recommended method. It will work on all major
operating systems and prepare a virtual Linux installation that contains
all the necessary software. [#gitbash_]

#. Install VirtualBox for your operating system: https://www.virtualbox.org/
#. Install Vagrant for your operating system. Be careful to choose a version
   compatible with your VirtualBox version: https://www.vagrantup.com/
#. Download and unzip the file
   https://github.com/uyar/itucs-vmimage/archive/master.zip
#. Change into the directory "itucs-vmimage-master".
#. Run the command "vagrant up".
#. Log in to the virtual machine using the command "vagrant ssh".
#. Change the password for the "ubuntu" user: "sudo passwd ubuntu".
#. Reboot the machine: "sudo reboot"

To use the virtual machine, either start it from the VirtualBox window
or using the "vagrant up" command. Similarly, you can shut down
the virtual machine using the VirtualBox application or the command
"vagrant halt".

Using an Ubuntu-based distribution
----------------------------------

You can also choose to install any Ubuntu-based Linux distribution and
install the necessary packages on top of it. It is still recommended
that you install the distribution under VirtualBox unless you’re absolutely
certain that you know what you’re doing. After the installation,
follow these steps:

#. Download and unzip the file
   https://github.com/uyar/itucs-vmimage/archive/master.zip
#. Change into the directory "itucs-vmimage-master".
#. Although this is not required, it’s recommended that you run the commands
   "sudo sh install_base.sh" and "sudo sh install_blg101.sh" to install
   some basic tools that might be useful.
#. Run the command: "sudo sh install_blg102.sh".

Using any other Unix installation
---------------------------------

Find and install the following packages for your system:

- GCC C++ compiler. On Linux systems this package is usually called
  "g++" or "gcc-c++".
- make
- cppcheck: http://cppcheck.sourceforge.net/
- Artistic Style (astyle): http://astyle.sourceforge.net/

This method is not fully supported by our staff. If you run into any problems,
we will only try to give you some guidance about how you can solve it.

Using any other system
----------------------

Sorry, you are completely on your own here. Our staff doesn’t have
the resources to support other methods in any way.

.. [#gitbash]

   If you are using Windows, it is recommended that you install
   the Git version control system and use "Git Bash" instead of the standard
   Windows command prompt: https://git-scm.com/
