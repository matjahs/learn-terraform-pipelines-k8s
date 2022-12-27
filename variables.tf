variable "enable_consul_and_vault" {
  type        = bool
  default     = false
  description = "Enable consul and vault for the secrets cluster"
}

variable "app_id" {
  type        = string
  description = "Azure App ID"
}

variable "password" {
  type        = string
  description = "Azure Password"
}
