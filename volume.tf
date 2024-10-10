# 이미지 생성
resource "openstack_images_image_v2" "rocky8" {
  name = "rocky8"
  local_file_path = "./Rocky-8-GenericCloud-Base.latest.x86_64.qcow2"
  container_format = "bare"
  disk_format = "qcow2"
}


resource "openstack_blockstorage_volume_v3" "case4vol" {
  name      = "case4vol"
  size      = 20
  image_id  = openstack_images_image_v2.rocky8.id
}

