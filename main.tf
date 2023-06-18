resource "azurerm_resource_group" "terraform_app_service_rg" {
  name     = "terraform-app-service-rg"
  location = var.location
}

resource "azurerm_service_plan" "terraform_app_service_plan" {
  name                = "terraform-app-service-plan"
  location            = azurerm_resource_group.terraform_app_service_rg.location
  resource_group_name = azurerm_resource_group.terraform_app_service_rg.name
  os_type             = "Linux"
  sku_name            = "F1"
}

resource "azurerm_app_service" "terraform_app_service" {
  name                = "appservice06182023"
  location            = azurerm_resource_group.terraform_app_service_rg.location
  resource_group_name = azurerm_resource_group.terraform_app_service_rg.name
  app_service_plan_id = azurerm_service_plan.terraform_app_service_plan.id
  site_config {
    dotnet_framework_version = "v6.0"
  }
}
