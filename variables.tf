# cluster
variable "{{.name}}_name" {
  description = "The cluster name for the AKS resources created in the specified Azure Resource Group."
  type        = string
}

variable "{{.name}}_location" {
  description = "The Azure region in which all resources in this example should be provisioned."
  type        = string
}

variable "{{.name}}_dns_prefix" {
  description = "(The prefix for the resources created in the specified Azure Resource Group"
  type        = string
}


# default_node_pool

variable "{{.name}}_vm_size" {
  type        = string
  description = "VM Size of node pool.https://learn.microsoft.com/en-us/azure/aks/hybrid/concepts-support"
}

variable "{{ .name }}_subnet_id" {
  description = "(Optional) The ID of a Subnet where the Kubernetes Node Pool should exist. Changing this forces a new resource to be created."
  type        = string
}

variable "{{.name}}_os_disk_size_gb" {
  description = "Disk size of nodes in GBs."
  type        = number
}

variable "zones" {
  type        = list(string)
  description = "A list of Availability Zones across which the Node Pool should be spread."
  default = [ "1" ]
}

variable "{{.name}}_primary_min_count" {
  type        = number
  description = "Minimum number of nodes in a pool"
}

variable "{{.name}}_primary_max_count" {
  type        = number
  description = "Maximum number of nodes in a pool"
}

variable "primary_max_pods" {
  type        = number
  description = "Maximum number of pods in a nodes"
  default = 30
}

variable "{{.name}}_secondary_min_count" {
  type        = number
  description = "Minimum number of nodes in a pool"
}

variable "{{.name}}_secondary_max_count" {
  type        = number
  description = "Maximum number of nodes in a pool"
}

variable "secondary_max_pods" {
  type        = number
  description = "Maximum number of pods in a nodes"
  default = 30
}
