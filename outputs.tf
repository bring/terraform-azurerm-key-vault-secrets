output "secrets_values" {
  description = "The name and values of secrets"
  value       = { for s in data.azurerm_key_vault_secret.vaultvalue : s.name => s.value }
}
