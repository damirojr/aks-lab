resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "akslab"

  default_node_pool {
    name       = "agentpool"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
    zones = [ 1,2,3 ]
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Laboratorio"
    IaC = "True"
    Source = "Terraform"
  }
}

