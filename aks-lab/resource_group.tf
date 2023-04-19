resource "azurerm_resource_group" "rg" {
  name = "RG-AKS-LAB"
  location = var.location

}