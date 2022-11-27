# Terraform ESXI VM Install

This repo contains the Terraform files required to clone an existing VM to a new VM in ESXI. This is particularly useful if you do not run vCenter in your environment but would still like the benifits of declaring your ESXI infrastructure using IaC. 

My particular usecase for this is making clones of templated VM's and then using Ansible for further CD automation.

## Prerequsites

In order to use this Terraform provider you will need a few things first: 

1. Terraform itself - https://developer.hashicorp.com/terraform/downloads
2. VMware ovftool - https://developer.vmware.com/web/tool/4.4.0/ovf - Note: You will need a Vmware account to download the install files however you can create a free account

Depending on the OS where you are running Terraform from you will need to do a few things: 

### Windows: 

Once you have downloaded and installed the ovftool you will need to add the path into your environmental variables . More info on that here - https://www.java.com/en/download/help/path.html

### Linux: 

Once you have downloaded the bundle file to your Linux machine, do the following to install

Make the file executable:
```
chmod a+x name_of_the_file.bundle
```
Install the bundle file:
```
sudo ./name_of_the_file.bundle
```
3. Make a new .tfvars file on the location where you are running Terraform from that corresponds with the variables.tf file included with the repo
4. Run ```terraform init``` to initialize terraform repo
5. Run ```terraform plan``` to make sure as to what terraform will do
6. Run ```terraform apply``` to apply the terraform config

More info on the esxi terraform provider can be found at - https://github.com/josenk/terraform-provider-esxi