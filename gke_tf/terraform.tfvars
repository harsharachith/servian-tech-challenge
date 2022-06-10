cluster_name           = "servian"
location               = "us-east1"
project_id             = "cogent-point-212609"
subnetwork             = "default"
istio_enabled          = "false"
istio_auth             = "AUTH_MUTUAL_TLS"
node_pool_name         = "servian-node-pool-1"
master_version         = "1.22.8-gke.201"
worker_nodes_version   = "1.22.8-gke.201"
node_locations         = ["us-east1-b", "us-east1-c"]
worker_nodes_count     = "1"
worker_nodes_disk_size = "10"
worker_node_type       = "g1-small"
