#output "cluster" {
#  value = azurerm_kubernetes_cluster.default.name
#}
#
#output "host" {
#  value     = azurerm_kubernetes_cluster.default.kube_admin_config.host
#  sensitive = true
#}
#
#output "cluster_ca_certificate" {
#  value     = base64decode(azurerm_kubernetes_cluster.default.kube_admin_config.client_certificate)
#  sensitive = true
#}
#
#output "username" {
#  value     = azurerm_kubernetes_cluster.default.kube_admin_config.username
#  sensitive = true
#}
#
#output "password" {
#  value     = azurerm_kubernetes_cluster.default.kube_admin_config.password
#  sensitive = true
#}
#
#output "enable_consul_and_vault" {
#  value = var.enable_consul_and_vault
#}
#
#output "kubeconfig" {
#  value = templatefile("${path.root}/kubeconfig-template.yaml", {
#    endpoint = azurerm_kubernetes_cluster.default.kube_admin_config.host
#    cluster_name = azurerm_kubernetes_cluster.default.name,
#    cluster_ca = base64decode(azurerm_kubernetes_cluster.default.kube_admin_config.client_certificate),
#    user_name = azurerm_kubernetes_cluster.default.kube_admin_config.username,
#    user_password = azurerm_kubernetes_cluster.default.kube_admin_config.password,
#    client_cert = base64decode(azurerm_kubernetes_cluster.default.kube_admin_config.client_certificate),
#    client_cert_key = base64decode(azurerm_kubernetes_cluster.default.kube_admin_config.client_key),
#  })
#}
#
#output "resource_group_name" {
#  value = azurerm_kubernetes_cluster.default.name
#}
#
#output "region" {
#  value = azurerm_kubernetes_cluster.default.location
#}
