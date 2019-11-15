variable "region" {
  default = "us-west-2"
}

variable "cluster-name" {
  default = "sym-search-dev-eks"
  type    = "string"
}

variable "public-key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCXx55LPxZMkO+KNYovPrF6ghA5apRWqS+F5Uutz1Vq5EpbgJiclZN1QvExxAdGoyue0mT3EGrWcww4X1RuAUFc7yQFYaBgfVpUm4P5HBnO695WMDYYum1Dy+Tkfn/NoK9+XxY6nMSxT1R/tODcyId+boaFeAHNH//8FyE57P6JSQq/UpWWCKcV0+Gjo4uio8WeSS0hwGbchzxbB+7XQw0JmWFFPqq8DRxZUb7sesAIUknUIf7lDzQ+juagIpQ9SO7lr35G2VQLPJm8dB7djwx9vsFzw0CoMZZgQH/k2LHYJzz0gtzWCVT2lQ1RFsaKGnaCuPNIHnOm2q0MRLhILH2F"
}

variable "data_node_instante_type" {
  default = "c5.2xlarge"
}

variable "min_num_data_nodes" {
  default = 1
}

variable "max_num_data_nodes" {
  default = 60
}

variable "desired_num_data_nodes" {
  default = 1
}

variable "master_node_instante_type" {
  default = "c5.xlarge"
}

variable "min_num_master_nodes" {
  default = 1
}

variable "max_num_master_nodes" {
  default = 30
}

variable "desired_num_master_nodes" {
  default = 1
}

variable "num_availability_zones" {
  default = 2
}

//Service node conf

variable "service_node_instante_type" {
  default = "t3.small"
}

variable "min_num_service_nodes" {
  default = 1
}

variable "max_num_service_nodes" {
  default = 30
}

variable "desired_num_service_nodes" {
  default = 2
}
