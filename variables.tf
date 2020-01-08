variable "name" {
  description = "The profile's name"
}

variable "path" {
  description = "Path in which to create the profile."
  default     = "/"
}

variable "role" {
  description = "The role name to include in the profile."
}