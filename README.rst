Installation Instructions
=========================

If you want to use your own computer for following the material and
doing the assignments in some of the courses (listed below) of the
Computer Engineering Department of the Istanbul Technical University,
you will need to set up an environment that contains the needed
software packages. This document outlines your options.

The currently supported courses are:

- BLG101: Introduction to Information Systems
- BLG102: Introduction to Scientific and Engineering Computation (C)
- BLG312: Computer Operating Systems
- BLG413: System Programming
- BLG458: Functional Programming
- BLG460: Secure Programming

To carry out the instructions below, you will need a "terminal emulator"
program (also called a "command prompt"). All platforms provide such a program.
On the Linux system described below, it's called "Xfce Terminal". On Windows,
you can use the programs "cmd" or "PowerShell"; or you can install the `Git`_
version control system and use "Git Bash" (recommended).

Using VirtualBox and Vagrant
----------------------------

This is the simplest and recommended method. It will work on all major
operating systems and prepare a virtual Linux installation that contains
all the necessary software for all of these courses.::

  Warning for Windows users: There is a possibility that Windows 
  virtualization environment may clash with virtualbox. Therefore;
  it is recommended to disable the following Windows features from
  Control Panel -> Programs and Features -> Turn Windows features on or off

  - Containers
  - Hyper-V
  - Virtual Machine Platform
  - Windows Hypervisor Platform
  - Windows Sandbox
  - Windows Subsystem for Linux

  You might need to restart your computer, then continue as follows:

#. Install `VirtualBox`_ for your operating system.

#. Install VM VirtualBox Extension Pack. It is hosted on:
   https://www.virtualbox.org/wiki/Downloads

#. Install `Vagrant`_ for your operating system. Be careful to choose a version
   that is compatible with your VirtualBox version.

#. Download and unzip the file:
   https://github.com/itublg/itucs-vmimage/archive/master.zip

#. Change into the directory: ``itucs-vmimage-master``
   Note that, you may use this directory as a shared folder.
   So, choose an appropriate location that you don't need to delete afterwards.

#. For Windows OS, run the command::

     vagrant up --provision & vagrant halt

   For Unix-like OS, run the command::
   
     vagrant up --provision ; vagrant halt
   
   *Careful: The first time you run this command, it will download a very large
   amount of data from the Internet. It will take a considerable amount of time.
   Be patient.*

   *Remark: You may see a virtual box window that reflects a login screen.
   Normally, you don't need to login till the progress finishes.
   This window will disappear after successful installation.*

#. If you get no errors, you will see "Successfully installed!" message on the terminal

As a result, you will obtain a virtual machine named "ItuCompeng" under VirtualBox.
To use it, either start it from the VirtualBox window or browse into this installation
directory and run the command::

   vagrant up

In the VirtualBox window, if the machine is listed as running but its window
is not visible, click the "Show" button.

Using an Ubuntu-based distribution
----------------------------------

You can also choose to install any Ubuntu-based Linux distribution and
install the necessary packages on top of it. It is still recommended
that you install the distribution under VirtualBox unless you're absolutely
certain that you know what you're doing. Another safe option would be
to `install to a memory stick <memory-stick.rst>`_.

After the installation, follow these steps:

#. Download and unzip the file:
   https://github.com/itublg/itucs-vmimage/archive/master.zip

#. From your command prompt (see the note about command prompts in the
   "Installation Instructions" section above), change into the directory
   that you just created when you unzipped the file: ``itucs-vmimage-master``

#. Run the command::

      sudo sh install_base.sh

#. Run the command::

      sudo sh install_blgNNN.sh

   where ``NNN`` is numeric part of the course code.

Using other systems
-------------------

Install the following packages for your system (for Ubuntu, the names
of the packages are given in parentheses):

**All courses**

- `Git`_ (``git``)

**BLG101**

- `Geany`_ (``geany``)
- `madedit-mod`_ (not available on Ubuntu repositories)
- `LibreOffice`_ (``libreoffice``)
- `Gimp`_ (``gimp``)
- `Inkscape`_ (``inkscape``)
- `Python`_ (``python3``)
- `Bottle`_ (``python3-bottle``)

**BLG102**

- `GCC C++ compiler`_ (``g++``)
- `GNU make`_ (``make``)
- `cppcheck`_ (``cppcheck``)
- `ClangFormat`_ (``clang-format``)

**BLG312**

This course doesn't need any special software other than
the standard tools installed for BLG102.

**BLG413**

In addition to the packages listed under BLG102, you also need:

- `nasm`_ (``nasm``)
- `libfuse`_ (``libfuse-dev``)

**BLG458**

- `Glasgow Haskell Compiler`_ (``haskell-platform``)

**BLG460**

In addition to BLG102, you need the following and some of their auxiallary packages

- `Splint`_ (``splint``)
- `Terminator`_ (``terminator``)

Tips
----

- After a successful installation there exist only one user *vagrant*
  and the password for this user is also *vagrant*. 

- The keyboard layout is set to Turkish-Q by default.
  To have other non-default keyboard layout under Debian,
  right click on the bottom panel and choose
  "Panel -> Add New Items... -> Keyboard Layouts". Right click on the added
  item (a flag) and choose "Keyboard settings". In the "Layout" tab, untick
  the "Use system defaults" box and under "Keyboard layout", add the desired 
  language (the main item, not any of the subitems).

- To connect to the wi-fi network on campus using Debian, 
  open up the network settings tool, choose the "eduroam" network,
  and under "wi-fi security", choose "Protected EAP (PEAP)"
  as the authentication option. Enter your ITU e-mail address as your
  username, and enter your password. Also make sure that the box labeled
  "No CA certificate is required" is checked.

- Check out the `Using the ITU cloud storage service <kovan.rst>`_ document
  for accessing your files from various devices. You will need this especially
  if you are using the memory stick installation.


.. _Apache Server: http://httpd.apache.org/
.. _Bottle: https://bottlepy.org/
.. _ClangFormat: http://clang.llvm.org/docs/ClangFormat.html
.. _cppcheck: http://cppcheck.sourceforge.net/
.. _GCC C++ compiler: http://gcc.gnu.org/
.. _Geany: https://www.geany.org/
.. _Gimp: https://www.gimp.org/
.. _Git: https://git-scm.com/
.. _Glasgow Haskell Compiler: https://www.haskell.org/ghc/
.. _GNU make: https://www.gnu.org/software/make/
.. _Inkscape: https://inkscape.org/
.. _libfuse: https://github.com/libfuse/libfuse
.. _LibreOffice: https://www.libreoffice.org/
.. _madedit-mod: https://sourceforge.net/projects/madedit-mod/
.. _MariaDB: https://mariadb.org/
.. _nasm: http://www.nasm.us/
.. _PHP: https://www.php.net/
.. _Python: https://www.python.org/
.. _Vagrant: https://www.vagrantup.com/
.. _VirtualBox: https://www.virtualbox.org/
.. _Splint: http://splint.org/
.. _Terminator: https://github.com/gnome-terminator/terminator