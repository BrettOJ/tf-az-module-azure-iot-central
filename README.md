# tf-az-module-azure-iot-central
Terraform module to deploy an Azure IoT central instance

Manages an IoT Central Organization

## [Example Usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#example-usage)

```hcl
resource "azurerm_resource_group" "example" { name = "example-resource" location = "West Europe" } resource "azurerm_iotcentral_application" "example" { name = "example-iotcentral-app" resource_group_name = azurerm_resource_group.example.name location = azurerm_resource_group.example.location sub_domain = "example-iotcentral-app-subdomain" display_name = "example-iotcentral-app-display-name" sku = "ST1" template = "iotc-default@1.0.0" tags = { Foo = "Bar" } } resource "azurerm_iotcentral_organization" "example_parent" { iotcentral_application_id = azurerm_iotcentral_application.example.id organization_id = "example-parent-organization-id" display_name = "Org example parent" } resource "azurerm_iotcentral_organization" "example" { iotcentral_application_id = azurerm_iotcentral_application.example.id organization_id = "example-child-organization-id" display_name = "Org example" parent_organization_id = azurerm_iotcentral_organization.example_parent.organization_id }
```

## [Argument Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#argument-reference)

The following arguments are supported:

-   [`iotcentral_application_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#iotcentral_application_id-6) - (Required) The application `id`. Changing this forces a new resource to be created.
    
-   [`organization_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#organization_id-5) - (Required) The ID of the organization. Changing this forces a new resource to be created.
    
-   [`display_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#display_name-8) - (Required) Custom `display_name` for the organization.
    
-   [`parent_organization_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#parent_organization_id-5) - (Optional) The `organization_id` of the parent organization. Changing this forces a new resource to be created.
    

## [Attributes Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#attributes-reference)

In addition to the Arguments listed above - the following Attributes are exported:

-   [`id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#id-17) - The ID reference of the organization, formated as `/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.IoTCentral/iotApps/{application}/organizations/{organizationId}`.

## [Timeouts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#timeouts)

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:

-   [`create`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#create-13) - (Defaults to 30 minutes) Used when creating the IoT Central Organization.
-   [`update`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#update-13) - (Defaults to 30 minutes) Used when updating the IoT Central Organization.
-   [`read`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#read-15) - (Defaults to 5 minutes) Used when retrieving the IoT Central Organization.
-   [`delete`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#delete-13) - (Defaults to 30 minutes) Used when deleting the IoT Central Organization.

## [Import](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#import)

The IoT Central Organization can be imported using the `id`, e.g.

```shell
terraform import azurerm_iotcentral_organization.example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.IoTCentral/iotApps/example/organizations/example
```