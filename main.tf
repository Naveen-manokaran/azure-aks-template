module "aks" {                     
     source               = "bootlabstech/aks/azurerm"
     version              = "1.0.3"
     name                 = {{.name}}_name  
     primary_min_count    = {{.name}}_primary_min_count 
     vm_size              = {{.name}}_vm_size 
     location             = {{.name}}_location  
     dns_prefix           = {{.name}}_dns_prefix  
     subnet_id            = {{ .name }}_subnet_id
     zones                = var.aks_zones
     primary_max_count    = {{.name}}_primary_max_count 
     secondary_min_count  = {{.name}}_secondary_min_count
     secondary_max_count  = {{.name}}_secondary_max_count 
     resource_group_name  = module.resource_group.resource_group.id
     os_disk_size_gb      = {{.name}}_os_disk_size_gb
}
