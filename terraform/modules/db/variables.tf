variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-base"
}
variable subnet_id {
  description = "Subnets for modules"
}
variable db_cores {
  description = "Core number"
  default     = "2"
}
variable db_memory {
  description = "Memory in Gb"
  default     = "2"
}
variable db_core_fraction {
  description = "Core fraction"
  default     = "20"
}