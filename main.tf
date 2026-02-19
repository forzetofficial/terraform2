resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

# Модуль для marketing ВМ
module "marketing_vm" {
  source = "./vms"

  vm_name        = "marketing-app"
  subnet_id      = yandex_vpc_subnet.develop.id
  public_key = var.vms_ssh_root_key  # используем переменную из корня
  
  # Метки для обозначения принадлежности к проекту marketing
  labels = {
    project = "marketing"
    environment = "prod"
    role = "web"
    managed_by = "terraform"
  }
  
  # Явно укажем public_key из модуля vms (если нужно)
  public_key = var.vms_ssh_root_key
}

# Модуль для analytics ВМ
module "analytics_vm" {
  source = "./vms"

  vm_name        = "analytics-app"
  subnet_id      = yandex_vpc_subnet.develop.id
  public_key = var.vms_ssh_root_key
  
  # Метки для обозначения принадлежности к проекту analytics
  labels = {
    project = "analytics"
    environment = "prod"
    role = "db"
    managed_by = "terraform"
  }
  
  public_key = var.vms_ssh_root_key
}