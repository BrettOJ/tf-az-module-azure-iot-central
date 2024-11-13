resource "azurerm_iotcentral_organization" "iotc_org" {
  iotcentral_application_id = var.iotcentral_application_id
  organization_id           = var.organization_id
  display_name              = var.display_name
  parent_organization_id    = var.parent_organization_id
}