output "vpc_info" {
  description = "Information about VPC from module"
  value = {
    network_id   = module.vpc_dev.network_id
    subnet_id    = module.vpc_dev.subnet_id
    subnet_zone  = module.vpc_dev.subnet_zone
    subnet_cidr  = module.vpc_dev.subnet_cidr
    network_name = module.vpc_dev.network_name
    subnet_name  = module.vpc_dev.subnet_name
  }
}

output "marketing_vm" {
  description = "Marketing VM details"
  value = {
    external_ip = module.marketing_vm.external_ip
    internal_ip = module.marketing_vm.internal_ip
    fqdn        = module.marketing_vm.fqdn
    labels      = module.marketing_vm.labels
    vm_name     = module.marketing_vm.vm_name
  }
}

output "analytics_vm" {
  description = "Analytics VM details"
  value = {
    external_ip = module.analytics_vm.external_ip
    internal_ip = module.analytics_vm.internal_ip
    fqdn        = module.analytics_vm.fqdn
    labels      = module.analytics_vm.labels
    vm_name     = module.analytics_vm.vm_name
  }
}