variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-base"
}
variable subnet_id {
  description = "Subnets for modules"
}
variable app_cores {
  description = "Core number"
  default     = "2"
}
variable app_memory {
  description = "Memory in Gb"
  default     = "1"
}
variable app_core_fraction {
  description = "Core fraction"
  default     = "5"
}
