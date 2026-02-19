# Имя ВМ
variable "vm_name" {
  type        = string
  description = "Имя виртуальной машины"
}

# ID подсети
variable "subnet_id" {
  type        = string
  description = "ID подсети"
}

# SSH-ключ (переименуем для ясности, можно оставить и public_key)
variable "ssh_public_key" {
  type        = string
  description = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHMLfJOmjJr2h7dTOLu2b8pJ2TseHNEh0+vUyR/wtE9s netol@alsa"
}

# Метки
variable "labels" {
  type        = map(string)
  description = "Метки для ВМ"
  default     = {}
}
