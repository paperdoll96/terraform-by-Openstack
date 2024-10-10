resource "openstack_compute_instance_v2" "case4" {
  name = "case4vm"
  flavor_id = "11"
  key_pair = "terraformkey"
  security_groups = ["default","permitweb"]


  block_device {
    uuid = openstack_blockstorage_volume_v3.case4vol.id
    source_type = "volume"
    boot_index = 0
    destination_type = "volume"
    delete_on_termination = true
  }


  network {
    name = "private1"
  }
}
