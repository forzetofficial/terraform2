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
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILBUKQk2shb+S5/sH4jzjyAm96K0B00JXRjkrFASJyiN netol"
}

# Метки
variable "labels" {
  type        = map(string)
  description = "Метки для ВМ"
  default     = {}
}

# Семейство образа (для data "yandex_compute_image")
variable "image_family" {
  type        = string
  description = "Семейство образа ОС"
  default     = "ubuntu-2004-lts"  # Значение по умолчанию
}

variable "platform_id" {
  type        = string
  default     = "standard-v1"
}

variable "zone" {
  type        = string
  default     = "ru-central1-a"
}

variable "cores" {
  type        = number
  default     = 2
}

variable "memory" {
  type        = number
  default     = 2
}

variable "core_fraction" {
  type        = number
  default     = 5
}

variable "disk_size" {
  type        = number
  default     = 10
}

variable "disk_type" {
  type        = string
  default     = "network-hdd"
}