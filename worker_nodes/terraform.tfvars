cluster_name           = "servian"
location               = "us-east1"
project_id             = "phonic-chemist-353004"
subnetwork             = "default"
node_pool_name         = "servian-node-pool-2"
master_version         = "1.22.8-gke.201"
worker_nodes_version   = "1.22.8-gke.201"
node_locations         = ["us-east1-b"]
worker_nodes_count     = "1"
worker_nodes_disk_size = "100"
worker_node_type       = "g1-small"
