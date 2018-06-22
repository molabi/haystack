variable "s3_bucket_name" {}
variable "aws_vpc_id" {}
variable "aws_nodes_subnet" {}
variable "aws_utilities_subnet" {}
variable "aws_hosted_zone_id" {}
variable "aws_ssh_key" {}
variable "es_master_instance_type" {}
variable "es_worker_instance_type" {}
variable "es_worker_instance_count" {}
variable "es_master_instance_count" {}
variable "es_dedicated_master_enabled" {}
variable "zookeeper_count" {}
variable "zookeeper_volume_size" {}
variable "kafka_broker_count" {}
variable "kafka_broker_volume_size" {}
variable "kafka_broker_instance_type" {}
variable "kafka_default_partition_count" {}
variable "cassandra_node_image" {}
variable "cassandra_seed_node_volume_size" {}
variable "cassandra_non_seed_node_volume_size" {}
variable "cassandra_seed_node_instance_count" {}
variable "cassandra_non_seed_node_instance_count" {}
variable "cassandra_seed_node_instance_type" {}
variable "cassandra_non_seed_node_instance_type" {}
variable "k8s_app_name_space" {}
variable "haystack_cluster_name" {}
variable "graphite_hostname" {}
variable "graphite_port" {}
variable "k8s_nodes_iam-role_arn" {}
variable "aws_region" {}

