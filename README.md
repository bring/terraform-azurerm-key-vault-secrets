# terraform-azurerm-key-vault-secrets

Module for easy fetching of secrets from Azure Key Vaults.

## Example Usage

```hcl-terraform
locals {
  my_secret_key1 = "my-secret1"
  my_secret_key2 = "my-secret2"
}

module "my_app_key_vault" {
  source         = "github.com/bring/terraform-azurerm-key-vault-secrets"
  name           = "my-app-kv"
  resource_group = "my_resource_group_name"
  secret_names   = [local.my_secret_key1, local.my_secret_key2]
}

resource "example_azurerm_resource" "my_example_resource" {
  name       = "resource-needing-secrets"
  password   = module.my_app_key_vault.secrets_values[local.my_secret_key1]
  access_key = module.my_app_key_vault.secrets_values[local.my_secret_key2]
}
```
