# output(floating ip, 사설 ip 출력하기)
output "case4_floating_ip_private_ip" {
  value = "공인 : ${openstack_compute_floatingip_associate_v2.case4fip_bind.floating_ip}, 사설: ${openstack_compute_floatingip_associate_v2.case4fip_bind.fixed_ip} "
}


# output(floating ip 만 출력하기)
output "case4_floating_ip" {
  value = openstack_compute_floatingip_associate_v2.case4fip_bind.floating_ip
}
