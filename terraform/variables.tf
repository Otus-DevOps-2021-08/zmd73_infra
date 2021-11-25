variable "cloud_id" {
  description = "cloud_id from yandex"
}

variable "folder_id" {
  description = "Folder from yandex console"
}

variable "zone" {
  description = "Zone"
}

variable "image_id" {
  description = "image id that we use"
}

variable "subnet_id" {
  description = "subnet id that we use"
}

variable "public_key_path" {
  description = "public_key_path that we use"
}

variable "private_key_path" {
  description = "private_key_path that we use"
}

variable service_account_key_file {
  description = "key .json"
}

variable region_id {
  description = "region"
}

variable instances {
  description = "count instances"
  default     = 1
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-base"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-base"
}
variable app_cores {
  description = "App cores sum"
}
variable app_memory {
  description = "App memory sum"
}
variable app_core_fraction {
  description = "Core fraction"
  default     = "20"
}
variable db_cores {
  description = "App cores sum"
}
variable db_memory {
  description = "App memory sum"
}
variable db_core_fraction {
  description = "Core fraction"
  default     = "20"
}
variable access_key {
  description = "key id"
}
variable secret_key {
  description = "secret key"
}
variable bucket_name {
  description = "bucket name"
}