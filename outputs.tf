output "marketing_vm" {
  description = "Информация о marketing ВМ"
  value = {
    external_ip = module.marketing_vm.external_ip
    internal_ip = module.marketing_vm.internal_ip
    fqdn        = module.marketing_vm.fqdn
    labels      = module.marketing_vm.labels
    vm_name     = module.marketing_vm.vm_name
  }
}

output "analytics_vm" {
  description = "Информация о analytics ВМ"
  value = {
    external_ip = module.analytics_vm.external_ip
    internal_ip = module.analytics_vm.internal_ip
    fqdn        = module.analytics_vm.fqdn
    labels      = module.analytics_vm.labels
    vm_name     = module.analytics_vm.vm_name
  }
}

output "vpc_info" {
  description = "Информация о сети"
  value = {
    network_id  = yandex_vpc_network.develop.id
    subnet_id   = yandex_vpc_subnet.develop.id
    subnet_cidr = yandex_vpc_subnet.develop.v4_cidr_blocks
  }
}