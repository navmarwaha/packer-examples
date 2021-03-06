# Multiple AWS AMIs with Docker Installed

This template builds Multiple AWS AMIs (CentOS 7, Ubuntu 16.04, Debian 9) with Docker CE Installed on them.

## Requirements

 - You need to install [Packer](https://www.packer.io/intro/getting-started/install.html) on your local machine.
 - You need to add your AWS Access Key & Secret Key to the variables file ```vars/variable.json```.
 - You need to add the Subnet ID in the tempate itself. Packer launches instances in this Subnet to bundle the AMI.

## Build

Run the following command to trigger the build.

	$ packer build -var-file=vars/variables.json -var 'img_version=1.0' aws_multiple_images.json
## Note
 
This Packer template registers the AMIs to ```ap-south-1``` region by default. You can copy these images to other region(s) by passing variable```dest_regions``` from command line.

	$ packer build -var-file=vars/variables.json -var 'img_version=1.0' -var 'dest_regions=us-west-2' aws_multiple_images.json

	$ packer build -var-file=vars/variables.json -var 'img_version=1.0' -var 'dest_regions=us-west-2,ap-southeast-1' aws_multiple_images.json
