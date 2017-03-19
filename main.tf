resource "ibmcloud_infra_lb_local" "lb" {
  connections = "${var.connections}"
  datacenter = "${var.datacenter}"
  ha_enabled = "${var.ha_enabled}"
  dedicated = "${var.dedicated}"
}

resource "ibmcloud_infra_lb_local_service_group" "lb_service_group" {
  port = "${var.service_group_port}"
  routing_method = "${var.service_group_routing_method}"
  routing_type = "${var.service_group_routing_type}"
  load_balancer_id = "${ibmcloud_infra_lb_local.lb.id}"
  allocation = "${var.service_group_allocation}"
}
