variable "connections" {
  description = "The number of connections the Load Balancer can support"
  default = 250
}

variable "datacenter" {
  description = "The IBM Cloud datacenter to create the load balancer in"
}

variable "ha_enabled" {
  description = "(Boolean) Determines if the LB is highly available or not"
}

variable "dedicated" {
  description = "(Boolean) Whether the LB is dedicated (single tenant) or not"
}

variable "service_group_port" {
  description = "The port that the load balancer will serve traffic on"
}

variable "service_group_routing_method" {
  description = "Routing method for the load balancer, valid options are: CONSISTENT_HASH_IP, INSERT_COOKIE, LEAST_CONNECTIONS, LEAST_CONNECTIONS_INSERT_COOKIE, LEAST_CONNECTIONS_PERSISTENT_IP, PERSISTENT_IP, ROUND_ROBIN, ROUND_ROBIN_INSERT_COOKIE, ROUND_ROBIN_PERSISTENT_IP, SHORTEST_RESPONSE, SHORTEST_RESPONSE_INSERT_COOKIE, SHORTEST_RESPONSE_PERSISTENT_IP. See http://knowledgelayer.softlayer.com/procedure/what-balancing-methods-are-available-load-balancer for more information."
}

variable "service_group_routing_type" {
  description = "The communication protocol the load balancer will route traffic using. Options are: HTTP, TCP, DNS, FTP, UDP, and HTTPS"
}

variable "service_group_allocation" {
  description = "The percentage of connections to allocate to the group"
}
