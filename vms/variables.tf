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

variable "public_key" {
  type    = string
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHMLfJOmjJr2h7dTOLu2b8pJ2TseHNEh0+vUyR/wtE9s netol@alsa"
}

# Метки
variable "labels" {
  type        = map(string)
  description = "Метки для ВМ"
  default     = {}
}
