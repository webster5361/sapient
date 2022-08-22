resource "azurerm_app_service" "app" {
    # The count variable is set in variables.tf set it to the desired
    # value that will instantiate n number of resources that you are desiring.
    count = var.n_instances_to_provision

    location = azurerm_resource_group.rg-app.location
    app_service_plan_id = azurerm_app_service_plan.plan-app.id

    tags = {
        # This isn't required, but will ensure the name of each individual is tagged
        # with a unique name that we control vs. an instance ID.
        Name = "Server-${count.index}"
    }
}