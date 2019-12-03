output "wrkgrp2-vmPrivateIP" {
  value = "${azurerm_network_interface.nic2.private_ip_address}"
}

output "wrkgrp1-vmPrivateIP" {
  value = "${azurerm_network_interface.nic.private_ip_address}"
}

output "hub-vmPrivateIP" {
  value = "${azurerm_network_interface.hub-nic.private_ip_address}"
}

output "hubPublicIP" {
  value = "${azurerm_public_ip.hub-pip.ip_address}"
}