output "app-url" {
  value = "https://${azurerm_app_service.terraform_app_service.name}.azurewebsites.net"
}
