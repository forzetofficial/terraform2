## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.this](https://registry.terraform.io/providers/hashicorp/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.this](https://registry.terraform.io/providers/hashicorp/yandex/latest/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr"></a> [cidr](#input\_cidr) | CIDR block for subnet (e.g., 10.0.1.0/24) | `string` | n/a | yes |
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | Environment name (e.g., develop, staging, prod) | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Availability zone for subnet | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | ID of the created VPC network |
| <a name="output_network_name"></a> [network\_name](#output\_network\_name) | Name of the created network |
| <a name="output_subnet_cidr"></a> [subnet\_cidr](#output\_subnet\_cidr) | CIDR block of the created subnet |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | ID of the created subnet |
| <a name="output_subnet_name"></a> [subnet\_name](#output\_subnet\_name) | Name of the created subnet |
| <a name="output_subnet_zone"></a> [subnet\_zone](#output\_subnet\_zone) | Zone of the created subnet |
