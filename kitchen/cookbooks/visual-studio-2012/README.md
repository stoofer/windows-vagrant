Description
===========

Installs Visual Studio 2012 Professional

Requirements
============

Attributes
==========

* `node["vs2012"]["product_key"]` - The 25 digit product key
* `node["vs2012"]["temp_dir"]` - The temp area to use to unpack the installation image, defaults to `c:\\temp\\vs2012`
* `node["vs2012"]["zip_exe"]` - The install location of 7zip (this is installed by default if using the veewee windows definition).  Defaults to `c:\\Program Files\\7-Zip\\7z.exe`
* `node["vs2012"]["iso_file"]` - The name of the installation iso image defaults to `en_visual_studio_professional_2012_x86_dvd_920779.iso`
* `node["vs2012"]["installer"]` -  The name of the vs installation exe - defaults to `vs_professional.exe`
* `node["vs2012"]["target_dir"]` - The installation location - defaults to `default`

Usage
=====

* Download the VS 2012 iso image from MSDN and save it in the cookbook files/default folder.
* Set the product key attribute to your MSDN key (25 cahracters, no hyphens)

