output "loadbalancer_id" {
    value = "${ibmcloud_infra_lb_local.lb.id}"
}
output "loadbalancer_address" {
    value = "http://${ibmcloud_infra_lb_local.lb.ip_address}:${var.service_group_port}/"
}
output "service_group_id" {
    value = "${ibmcloud_infra_lb_local_service_group.lb_service_group.service_group_id}"
}
