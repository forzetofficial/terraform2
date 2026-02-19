output "vm_id" {
  description = "ID созданной виртуальной машины"
  value       = yandex_compute_instance.vm.id
}

output "vm_name" {
  description = "Имя созданной виртуальной машины"
  value       = yandex_compute_instance.vm.name
}

output "external_ip" {
  description = "Внешний IP-адрес ВМ (для подключения из интернета)"
  value       = yandex_compute_instance.vm.network_interface[0].nat_ip_address
}

output "internal_ip" {
  description = "Внутренний IP-адрес ВМ (внутри облачной сети)"
  value       = yandex_compute_instance.vm.network_interface[0].ip_address
}

output "fqdn" {
  description = "Полное доменное имя ВМ"
  value       = yandex_compute_instance.vm.fqdn
}

output "zone" {
  description = "Зона доступности, в которой создана ВМ"
  value       = yandex_compute_instance.vm.zone
}

output "platform_id" {
  description = "Платформа ВМ"
  value       = yandex_compute_instance.vm.platform_id
}

output "resources" {
  description = "Ресурсы ВМ (cores, memory, core_fraction)"
  value = {
    cores         = yandex_compute_instance.vm.resources[0].cores
    memory        = yandex_compute_instance.vm.resources[0].memory
    core_fraction = yandex_compute_instance.vm.resources[0].core_fraction
  }
}

output "disk_info" {
  description = "Информация о загрузочном диске"
  value = {
    disk_id = yandex_compute_instance.vm.boot_disk[0].disk_id
    size    = yandex_compute_instance.vm.boot_disk[0].initialize_params[0].size
    type    = yandex_compute_instance.vm.boot_disk[0].initialize_params[0].type
    image_id = yandex_compute_instance.vm.boot_disk[0].initialize_params[0].image_id
  }
}

output "labels" {
  description = "Метки, присвоенные ВМ"
  value       = yandex_compute_instance.vm.labels
}

output "status" {
  description = "Статус ВМ (running, stopped и т.д.)"
  value       = yandex_compute_instance.vm.status
}

output "created_at" {
  description = "Время создания ВМ"
  value       = yandex_compute_instance.vm.created_at
}

output "network_interfaces" {
  description = "Детальная информация о сетевых интерфейсах"
  value = [
    for i, iface in yandex_compute_instance.vm.network_interface : {
      index        = i
      subnet_id    = iface.subnet_id
      ip_address   = iface.ip_address
      nat          = iface.nat
      nat_ip_address = iface.nat_ip_address
      security_group_ids = iface.security_group_ids
    }
  ]
}