
source "vsphere-clone" "autogenerated_1" {
  RAM_reserve_all     = false
  cluster             = "USER_VALUE"
  convert_to_template = false
  customize {
    dns_server_list = ["192.168.254.1", "192.168.254.2"]
    ipv4_gateway    = "172.15.102.254"
    linux_options {
      domain    = "test.internal"
      host_name = "packer-test"
    }
    network_interface {
      ipv4_address = "172.15.102.202"
      ipv4_netmask = "24"
    }
  }
  datacenter           = "USER_VALUE"
  datastore            = "USER_VALUE"
  disable_shutdown     = true
  disk_controller_type = ["pvscsi", "pvscsi"]
  insecure_connection  = "true"
  network              = "USER_VALUE"
  notes                = "Build via Packer"
  password             = "USER_VALUE"
  ssh_password         = "Aa123456"
  ssh_username         = "root"
  storage {
    disk_controller_index = 0
    disk_size             = 100000
  }
  template       = "erez's template"
  username       = "USER_VALUE"
  vcenter_server = "USER_VALUE"
  vm_name        = "USER_VALUE"
}

build {
  sources = ["source.vsphere-clone.autogenerated_1"]

}