terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = "~>1.12.0"
}

provider "yandex" {
  # token                    = "do not use!!!"
  cloud_id                 = "b1gs5da4ba4s44ilemo4"
  folder_id                = "b1g9u8n1c4basprdu1vt"
  zone                     = "ru-central1-a" #(Optional) 
}