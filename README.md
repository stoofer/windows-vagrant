Builds a windows dev environment in vagrant from scratch.

## Building a windows 7 box with veewee
* Clone the veewee repo
* Install virtual box (assumes 4.1.23)
* Download the windows 7 ultimate with SP1 image from MSDN and save the iso in `veewee/iso/en_windows_7_ultimate_with_sp1_x64_dvd_u_677332`
* Download VBoxGuestAdditions_4.1.22.iso to the iso directory, and rename it to `veewee/iso/VBoxGuestAdditions_4.1.23.iso`
* Define a veewee image

    `$ veewee vbox define 'win7-ultimate' 'windows-7sp1-ultimate-amd64'`

* Customise the image to suit the size of VM as required
* Build the box

    `$ veewee vbox build 'win7-ultimate'`

* Shut down the virtual machine from VirtualBox once you've poked it about a bit to check it works.
* Export the VM for use in vagrant

    `$ vagrant basebox export 'win7-ultimate'`


### Using the image with Vagrant
* Install vagrant with windows support

    `$ gem install vagrant-windows`

* Import the box into vagrant

    `$ vagrant box add 'win7-ultimate' 'win7-ultimate.box'`

* Download the en_visual_studio_professional_2012_x86_dvd_920779.iso from MSDN to `kitchen/cookbooks/visual-studio-2012/files/default/en_visual_studio_professional_2012_x86_dvd_920779.iso`
* Add the environment variable `VS2012_KEY=<your product key>`
* Provision the box

    `$ vagrant up`

