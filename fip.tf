# case4 에 연결할 공인주소 발행
resource "openstack_networking_floatingip_v2" "case4fip" {
  pool = "sharednet1"
}


# case4 에 발생된 공인주소와 사설 네트워크 연결하기
resource "openstack_compute_floatingip_associate_v2" "case4fip_bind" {
  floating_ip = openstack_networking_floatingip_v2.case4fip.address
  instance_id = openstack_compute_instance_v2.case4.id
  fixed_ip = openstack_compute_instance_v2.case4.network.0.fixed_ip_v4
}
