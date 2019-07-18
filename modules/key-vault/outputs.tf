output "secrets_values" {
  value       = { for s in data.azurerm_key_vault_secret.vaultvalue : s.name => s.value }
}
