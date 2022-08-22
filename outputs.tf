output "name" {
  value       = azurerm_app_service.main.name
  description = "The name of the web app."
}

output "plan" {
  value = {
    id = azurerm_app_service.main.app_service_plan_id
  }
  description = "App Service plan properties for the web app."
}

output "hostname" {
  value       = azurerm_app_service.main.default_site_hostname
  description = "The default hostname of the web app."
}

