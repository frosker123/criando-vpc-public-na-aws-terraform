<!-- BEGIN_TF_DOCS -->
# Terraform AWS: Public VPC

Módulo de Terraform para criação de VPC Pública na AWS.

[![Terraform Docs](https://github.com/frosker123/criando-vpc-public-na-aws-terraform/actions/workflows/terraform-docs.yml/badge.svg)](https://github.com/frosker123/criando-vpc-public-na-aws-terraform/actions/workflows/terraform-docs.yml)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0  |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.22.0 |

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.rta](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.srg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_tags"></a> [instance\_tags](#input\_instance\_tags) | (Opcional) Tags para a instância | `map(string)` | <pre>{<br>  "managed_by": "terraform",<br>  "owner": "douglas"<br>}</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | (Opcional) Região na AWS | `string` | `"us-east-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | ID do security group criado |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | ID da subnet criada |
<!-- END_TF_DOCS -->