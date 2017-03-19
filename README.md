# Terraform IBM Cloud Local Load Balancer

A Terraform module for creating an [IBM Cloud Local Load Balancer](http://ibmcloudterraformdocs.chriskelner.com/docs/providers/ibmcloud/r/infra_lb_local.html). This will create a local load balancer with a single service group.

# Module Input Variables

- `connections`: The number of connections the Load Balancer can support. Defaults to `250`
- `datacenter`: The IBM Cloud datacenter to create the load balancer in. Valid values are:
  - `ams01`: Amsterdam 1
  - `ams03`: Amsterdam 3
  - `che01`: Chennai 1
  - `dal01`: Dallas 1
  - `dal10`: Dallas 10
  - `dal12`: Dallas 12
  - `dal02`: Dallas 2
  - `dal05`: Dallas 5
  - `dal06`: Dallas 6
  - `dal07`: Dallas 7
  - `dal09`: Dallas 9
  - `fra02`: Frankfurt 2
  - `hkg02`: Hong Kong 2
  - `hou02`: Houston 2
  - `lon02`: London 2
  - `mel01`: Melbourne 1
  - `mex01`: Mexico 1
  - `mil01`: Milan 1
  - `mon01`: Montreal 1
  - `osl01`: Oslo 1
  - `par01`: Paris 1
  - `sjc01`: San Jose 1
  - `sjc03`: San Jose 3
  - `sao01`: Sao Paulo 1
  - `sea01`: Seattle 1
  - `seo01`: Seoul 1
  - `sng01`: Singapore 1
  - `syd01`: Sydney 1
  - `syd04`: Sydney 4
  - `tok02`: Tokyo 2
  - `tor01`: Toronto 1
  - `wdc01`: Washington 1
  - `wdc04`: Washington 4
- `ha_enabled`: (Boolean) Determines if the LB is highly available or not. Defaults to `false`.
- `dedicated`: (Boolean) Whether the LB is dedicated (single tenant) or not. Defaults to `false`.
- `service_group_port`: The port that the load balancer will serve traffic on. Defaults to `80`.
- `service_group_routing_method`: Routing method for the load balancer; See http://knowledgelayer.softlayer.com/procedure/what-balancing-methods-are-available-load-balancer for more information. Defaults to `ROUND_ROBIN`. Valid options are:
  - `CONSISTENT_HASH_IP`
  - `INSERT_COOKIE`
  - `LEAST_CONNECTIONS`
  - `LEAST_CONNECTIONS_INSERT_COOKIE`
  - `LEAST_CONNECTIONS_PERSISTENT_IP`
  - `PERSISTENT_IP`
  - `ROUND_ROBIN`
  - `ROUND_ROBIN_INSERT_COOKIE`
  - `ROUND_ROBIN_PERSISTENT_IP`
  - `SHORTEST_RESPONSE`
  - `SHORTEST_RESPONSE_INSERT_COOKIE`
  - `SHORTEST_RESPONSE_PERSISTENT_IP`
- `service_group_routing_type`: The communication protocol the load balancer will route traffic using. Defaults to `HTTP`. Options are:
  - `HTTP`
  - `TCP`
  - `DNS`
  - `FTP`
  - `UDP`
  - `HTTPS`
- `service_group_allocation`: The percentage of connections to allocate to the group. Defaults to `100`.

# Usage

```hcl
module "loadbalancer" {
  source = "github.com/ckelner/tf_ibmcloud_local_loadbalancer?ref=v1.0"
  connections = 250
  datacenter = "dal06"
}
```

# Outputs

- `loadbalancer_id`: The id of the load balancer
- `loadbalancer_address`: The URL of the load balancer
- `service_group_id`: The id of the service group

# Authors

[Chris Kelner](http://github.com/ckelner)

# License

MIT; see [LICENSE](LICENSE) for details.
