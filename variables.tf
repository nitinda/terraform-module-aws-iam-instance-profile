variable "name" {
  description = "The profile's name"
  default     = null
}

variable "name_prefix" {
  description = "Creates a unique name beginning with the specified prefix"
  default     = null
}

variable "path" {
  description = "Path in which to create the profile."
  default     = "/"
}

variable "role" {
  description = "The role name to include in the profile."
  default     = null
}
