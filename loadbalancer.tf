resource "azurerm_public_ip" "test" {
   name                         = "pubIPLB"
   location                     = azurerm_resource_group.test.location
   resource_group_name          = azurerm_resource_group.test.name
   allocation_method            = "Static"
 }

 resource "azurerm_lb" "test" {
   name                = "lbtom"
   location            = azurerm_resource_group.test.location
   resource_group_name = azurerm_resource_group.test.name

   frontend_ip_configuration {
     name                 = "publicIPAddress"
     public_ip_address_id = azurerm_public_ip.test.id
   }
 }

 resource "azurerm_lb_backend_address_pool" "test" {
   loadbalancer_id     = azurerm_lb.test.id
   name                = "BackEndAddressPool"
 }