data "azurerm_key_vault" "vault" {
  name                = var.name
  resource_group_name = var.resource_group
}

data "azurerm_key_vault_secret" "vaultvalue" {
  count        = length(var.secret_names)
  name         = var.secret_names[count.index]
  key_vault_id = data.azurerm_key_vault.vault.id
}
