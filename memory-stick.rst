Installing to a memory stick
----------------------------

These instructions show how to install the recommended Linux environment
onto a memory stick so that you can run it natively directly off
the memory stick. You will need:

- An Internet connection (for steps 1 and 2).
- A USB memory stick with at least 4GB free disk space. *Caution: All contents
  of the memory stick might be erased.*
- A Windows computer with a USB port on which you have permission to run
  programs.

Follow these instructions carefully:

#. Download the `Linux Mint 19 XFCE`_ CD image file (in ISO format).

#. Download the `Universal USB Installer`_ program.

#. Insert your USB memory stick into a USB port on your computer.

#. Run the Universal USB Installer program from the location you downloaded it.

   This program has several options, listed as steps:

	Step 1 – Select the "Linux Mint" distribution to install.

	Step 2 – Select from your disk the CD image file you downloaded.

	Step 3 – Choose from the drop-down list the USB memory stick you inserted.

	Step 4 – Set the persistent file size to some value around 2048MB.

	Step 5 – Click Create. This process will take some time to complete.

#. Restart your computer, and use the boot menu to select the memory stick
   as the boot device. A common way to access the boot menu is to hold down
   the ``F12`` key as the computer is starting. However, different computers
   have different methods. You may have to change a setting in the BIOS
   to allow this (this can usually be accessed by pressing ``F2`` or ``DEL``
   keys).

#. Choose “Start Linux Mint” from the start-up menu.

#. When the desktop is ready, choose "System -> Xfce Terminal", and run
   the command::

     sudo apt update
     
#. Install the software recommended for your course by following the instructions under "Using an Ubuntu-based distribution" here: https://github.com/itublg/itucs-vmimage/blob/master/README.rst#user-content-using-an-ubuntu-based-distribution 

Remember to shut down the system properly when finished to ensure changes
you make are saved.


.. _Linux Mint 19 XFCE: https://linuxmint.com/edition.php?id=258
.. _Universal USB Installer: http://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/
