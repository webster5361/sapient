resource "azurerm_app_service" "app" {
    count = var.n_instances_to_provision

    location = azurerm_resource_group.rg-app.location
    app_service_plan_id = azurerm_app_service_plan.plan-app.id

    tags = {
        Name = "Server-${count.index}"
    }
}