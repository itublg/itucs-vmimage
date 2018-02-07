Installation Instructions
=========================

If you want to use your own computer for following the material and
doing the assignments in some of the courses (listed below) of the
Computer Engineering Department of the Istanbul Technical University,
you will need to set up an environment that contains the needed
software packages. Your options are outlined below.

The currently supported courses are:

- BLG101: Introduction to Information Systems
- BLG102: Introduction to Scientific and Engineering Computation (C)
- BLG413: System Programming
- BLG458: Functional Programming

Using VirtualBox and Vagrant
----------------------------

This is the simplest and recommended method. It will work on all major
operating systems and prepare a virtual Linux installation that contains
all the necessary software for all of these courses. [#gitbash]_

#. Install VirtualBox for your operating system: https://www.virtualbox.org/
#. Install Vagrant for your operating system. Be careful to choose a version
   compatible with your VirtualBox version: https://www.vagrantup.com/
#. Download and unzip the file
   https://github.com/uyar/itucs-vmimage/archive/master.zip
#. Change into the directory "itucs-vmimage-master".
#. Run the command "vagrant up". *Careful: The first time this command
   is run, it will download a very large amount of data from the Internet.*
#. If you get no errors, run the command "vagrant halt" to shut down
   the machine.

To use the virtual machine, either start it from the VirtualBox window
or using the "vagrant up" command. To see a machine that was started using
"vagrant up", click the "Show" button in the VirtualBox window.

You can log in to the machine by choosing the "ubuntu" user and typing
the password "itucs".

Using an Ubuntu-based distribution
----------------------------------

You can also choose to install any Ubuntu-based Linux distribution and
install the necessary packages on top of it. It is still recommended
that you install the distribution under VirtualBox unless you’re absolutely
certain that you know what you’re doing. [#pendrive]_

After the installation, follow these steps:

#. Download and unzip the file
   https://github.com/uyar/itucs-vmimage/archive/master.zip
#. Change into the directory "itucs-vmimage-master".
#. Run the command: "sudo sh install_base.sh"
#. Run the command: "sudo sh install_blgNNN.sh" where NNN is
   numeric part of the course code.

Using other systems
-------------------

Install the following packages for your system:

BLG101

  - Geany: https://www.geany.org/

    Package name on Ubuntu: "geany"

  - LibreOffice: https://www.libreoffice.org/

    Package name on Ubuntu: "libreoffice"

  - Gimp: https://www.gimp.org/

    Package name on Ubuntu: "gimp"

  - Inkscape: https://inkscape.org/

    Package name on Ubuntu: "inkscape"

BLG102

  - GCC C++ compiler: http://gcc.gnu.org/

    Package name on Ubuntu: "g++"

  - make: https://www.gnu.org/software/make/

    Package name on Ubuntu: "make"

  - cppcheck: http://cppcheck.sourceforge.net/

    Package name on Ubuntu: "cppcheck"

  - Artistic Style: http://astyle.sourceforge.net/

    Package name on Ubuntu: "astyle"

BLG413

  - nasm: http://www.nasm.us/

    Package name on Ubuntu: "nasm"

  - libfuse: https://github.com/libfuse/libfuse

    Package name on Ubuntu: "libfuse-dev"

BLG458

  - Glasgow Haskell Compiler (ghc): https://www.haskell.org/ghc/

    Package name on Ubuntu: "haskell-platform"

.. [#gitbash]

   If you are using Windows, it is recommended that you install
   the Git version control system and use "Git Bash" instead of the standard
   Windows command prompt: https://git-scm.com/

.. [#pendrive]

   Another safe option would be to install to a flash drive:
   https://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/
