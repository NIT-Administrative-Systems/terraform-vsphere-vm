# Configure the VMware vSphere Provider
provider "vsphere" {
  user           = ""
  password       = ""
  vsphere_server = "" 

  # if you have a self-signed cert
  allow_unverified_ssl = true
}

# Deploy 1 linux VMs
module "linuxvm" {
  source        = "../module/clone"
#version       = "2.1.0"
  vmtemp        = ""
  instances     = 1
#num_cpus      = 1
  vmname        = ""
  vmrp          = ""
  network = {
    "yournetwork" = ["ipifany"] # To use DHCP create Empty list ["",""]
  }
  vmgateway         = ""
  dc        = "Datacenter"
  datastore = "datastore"
}