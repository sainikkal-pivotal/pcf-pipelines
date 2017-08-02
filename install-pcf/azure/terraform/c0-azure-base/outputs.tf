///////////////////////////////////////////////
//////// Pivotal Customer[0] //////////////////
////////                          /////////////
///////////////////////////////////////////////

output "subscription_id" {
  value = "${var.subscription_id}"
}

output "tenant_id" {
  value = "${var.tenant_id}"
}

output "client_id" {
  value = "${var.client_id}"
}

output "client_secret" {
  value = "${var.client_secret}"
}

output "ops_manager_dns" {
  value = "${azurerm_dns_a_record.ops_manager_dns.name}.${azurerm_dns_a_record.ops_manager_dns.zone_name}"
}

output "mysql_dns" {
  value = "mysql.${azurerm_dns_a_record.mysql.zone_name}"
}

output "tcp_dns" {
  value = "tcp.${azurerm_dns_a_record.tcp.zone_name}"
}

output "sys_domain" {
  value = "sys.${azurerm_dns_a_record.sys.zone_name}"
}

output "apps_domain" {
  value = "apps.${azurerm_dns_a_record.apps.zone_name}"
}

output "env_dns_zone_name_servers" {
  value = "${azurerm_dns_zone.env_dns_zone.name_servers}"
}

output "web_lb_name" {
  value = "${azurerm_lb.web.name}"
}

output "mysql_lb_name" {
  value = "${azurerm_lb.mysql.name}"
}

output "tcp_lb_name" {
  value = "${azurerm_lb.tcp.name}"
}

output "pcf_virtual_network_name" {
  value = "${azurerm_virtual_network.pcf_virtual_network.name}"
}

output "opsman_and_director_subnet_name" {
  value = "${azurerm_subnet.opsman_and_director_subnet.name}"
}

output "opsman_and_director_subnet_cidr" {
  value = "${azurerm_subnet.opsman_and_director_subnet.address_prefix}"
}

output "opsman_and_director_subnet_gateway" {
  value = "${cidrhost(azurerm_subnet.opsman_and_director_subnet.address_prefix, 1)}"
}

output "ert_subnet_name" {
  value = "${azurerm_subnet.ert_subnet.name}"
}

output "ert_subnet_cidr" {
  value = "${azurerm_subnet.ert_subnet.address_prefix}"
}

output "ert_subnet_gateway" {
  value = "${cidrhost(azurerm_subnet.ert_subnet.address_prefix, 1)}"
}

output "services_subnet_name" {
  value = "${azurerm_subnet.services_subnet.name}"
}

output "services_subnet_cidr" {
  value = "${azurerm_subnet.services_subnet.address_prefix}"
}

output "services_subnet_gateway" {
  value = "${cidrhost(azurerm_subnet.services_subnet.address_prefix, 1)}"
}

output "pcf_resource_group_name" {
  value = "${var.env_name}"
}

output "ops_manager_security_group_name" {
  value = "${azurerm_network_security_group.ops_manager_security_group.name}"
}

output "bosh_root_storage_account" {
  value = "${azurerm_storage_account.bosh_root_storage_account.name}"
}

output "ops_manager_storage_account" {
  value = "${azurerm_storage_account.ops_manager_storage_account.name}"
}

output "wildcard_vm_storage_account" {
  value = "*${var.env_short_name}${data.template_file.base_storage_account_wildcard.rendered}*"
}

output "ops_manager_ssh_public_key" {
  value = "${var.vm_admin_public_key}"
}

output "ops_manager_public_ip" {
  value = "${var.pub_ip_opsman}"
}
