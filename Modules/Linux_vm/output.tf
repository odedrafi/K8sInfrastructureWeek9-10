
output "Password" {
  value = azurerm_linux_virtual_machine.linux_vm_Name.admin_password
  sensitive = true
}

output "userName"{
  value=azurerm_linux_virtual_machine.linux_vm_Name.admin_username
}