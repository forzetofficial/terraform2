output "network_id" {
  description = "ID of the created VPC network"
  value       = yandex_vpc_network.this.id
}

output "subnet_id" {
  description = "ID of the created subnet"
  value       = yandex_vpc_subnet.this.id
}

output "subnet_zone" {
  description = "Zone of the created subnet"
  value       = yandex_vpc_subnet.this.zone
}

output "subnet_cidr" {
  description = "CIDR block of the created subnet"
  value       = yandex_vpc_subnet.this.v4_cidr_blocks[0]
}

output "subnet_name" {
  description = "Name of the created subnet"
  value       = yandex_vpc_subnet.this.name
}

output "network_name" {
  description = "Name of the created network"
  value       = yandex_vpc_network.this.name
}
