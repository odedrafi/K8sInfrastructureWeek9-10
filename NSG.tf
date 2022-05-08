# for more readable tamplate we devide as much as possible 
# this section is for the network security groups we need 

/*----------------------------------------------------------------------------------------*/
# A NETWORK SECURITY GROUP PLUS AN ASSOSIATION TO THE WEB TIER SUBNET 
# this network security group will have the azure standard plus an openning of port 8080 
#  to startlistaning for app request 
/*----------------------------------------------------------------------------------------*/
resource "azurerm_subnet_network_security_group_association" "NSG1" {
  subnet_id                 = module.Subnets.public_subnet_id
  network_security_group_id = azurerm_network_security_group.NSG1.id

}

resource "azurerm_network_security_group" "NSG1" {
  name                = "NSG1"
  
  resource_group_name = module.RG.Resouce_group_name
  location            = module.RG.location
  security_rule {
    name                       = "ssh"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "Allow_8080"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "8080"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

}

/*----------------------------------------------------------------------------------------*/