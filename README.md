#Create a main.tf file and copy the following code. fill the required data and run terraform plan.


# terraform_vm_clone

# Configure the VMware vSphere Provider
provider "vsphere" {
  user           = "username "
  password       = "your password"
  vsphere_server = "vcenter name" 

  # if you have a self-signed cert
  allow_unverified_ssl = true
}

# Deploy 1 linux VMs
module "terraform-vsphere-vm" {
  source  = "git@github.com:MMeerim/terraform-vsphere-vm.git"
  version = "1.0.1"
  vmtemp        = "template name"
  instances     = 1
  vmname        = "name"
  vmrp          = "yourresource pool"
  network = {
    "yournetwork" = ["ipaddr"] # To use DHCP create Empty list ["",""]
  }
  vmgateway  = "gateway address"
  dc        = "your datacenter"
  datastore = "your datastore"
