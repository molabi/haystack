module "trace-indexer" {
  source = "trace-indexer"
  image = "expediadotcom/haystack-trace-indexer:${var.traces["version"]}"
  replicas = "${var.traces["traces_indexer_instances"]}"
  namespace = "${var.namespace}"
  kafka_endpoint = "${var.kafka_hostname}:${var.kafka_port}"
  elasticsearch_port = "${var.elasticsearch_port}"
  elasticsearch_hostname = "${var.elasticsearch_hostname}"
  cassandra_hostname = "${var.cassandra_hostname}"
  graphite_hostname = "${var.graphite_hostname}"
  graphite_port = "${var.graphite_port}"
  graphite_enabled = "${var.graphite_enabled}"
  node_selecter_label = "${var.node_selector_label}"
  enabled = "${var.traces["enabled"]}"
  kubectl_executable_name = "${var.kubectl_executable_name}"
  kubectl_context_name = "${var.kubectl_context_name}"
  cpu_limit = "${var.default_cpu_limit}"
  memory_limit = "${var.default_memory_limit}"
  env_vars = "${var.traces["trace_indexer_environment_overrides"]}"
}

module "trace-reader" {
  source = "trace-reader"
  image = "expediadotcom/haystack-trace-reader:${var.traces["version"]}"
  replicas = "${var.traces["traces_reader_instances"]}"
  namespace = "${var.namespace}"
  elasticsearch_endpoint = "${var.elasticsearch_hostname}:${var.elasticsearch_port}"
  cassandra_hostname = "${var.cassandra_hostname}"
  graphite_hostname = "${var.graphite_hostname}"
  graphite_port = "${var.graphite_port}"
  graphite_enabled = "${var.graphite_enabled}"
  enabled = "${var.traces["enabled"]}"
  node_selecter_label = "${var.node_selector_label}"
  kubectl_executable_name = "${var.kubectl_executable_name}"
  kubectl_context_name = "${var.kubectl_context_name}"
  cpu_limit = "${var.default_cpu_limit}"
  memory_limit = "${var.default_memory_limit}"
  env_vars = "${var.traces["trace_reader_environment_overrides"]}"
}