variable "location" {
  type        = string
  default     = "eastus2"
  description = "The Azure Region where all resources should be created (ex. usgovvirginia, eastus, etc)"
}

variable "vmSize" {
  type        = string
  default     = "Standard_DS1_v2"
  description = "VM size to use."
}