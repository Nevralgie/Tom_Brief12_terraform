resource "azurerm_virtual_network" "test" {
   name                = "vnettomwaye"
   address_space       = ["10.0.0.0/16"]
   location            = data.azurerm_resource_group.rg.location
   resource_group_name = data.azurerm_resource_group.rg.name
 }

 resource "azurerm_subnet" "test" {
   name                 = "tomsub"
   resource_group_name  = data.azurerm_resource_group.rg.name
   virtual_network_name = azurerm_virtual_network.test.name
   address_prefixes     = ["10.0.2.0/24"]
 }