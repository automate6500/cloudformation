## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_key_pair.key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key"></a> [key](#input\_key) | n/a | `map` | <pre>{<br>  "name": "cloudformation-ssh-key",<br>  "private_key": "private_key.pem",<br>  "public_key": "public_key.pub"<br>}</pre> | no |

## Outputs

No outputs.
