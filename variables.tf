variable "name" {
  description = "Name of vault"
}
variable "resource_group" {
  description = "Resource group where vault resides"
}

variable "secret_names" {
  description = "Names of secrets to fetch"
}
