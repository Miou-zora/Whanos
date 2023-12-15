variable "project_id" {
  type = string
  description = "The project ID to deploy to"
}

variable "project_region" {
  type = string
  description = "The region to deploy to"
}

variable "credentials_file" {
  type = string
  description = "The credentials to use for deployment"
}

variable "machine_type" {
  type = string
  description = "The machine type to use for the instance"
  default = "e2-medium"
}

variable "machine_zone" {
  type = string
  description = "The zone to deploy the instance to"
}