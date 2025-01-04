################################################################
# Project variables
################################################################

variable "name" {
  description = "The name of the project."
  type        = string
}

variable "path" {
  description = "The path of the repository."
  type        = string
  default     = null
}

variable "namespace_id" {
  description = "The namespace (group or user) of the project. Defaults to your user."
  type        = string
  default     = null
}

variable "description" {
  description = "A description of the project."
  type        = string
  default     = null
}

variable "visibility_level" {
  description = "Set to `public` to create a public project. Valid values are `private`, `internal`, `public`."
  type        = string
  default     = "public"
}

variable "archived" {
  description = "Whether the project is in read-only mode (archived). "
  type        = bool
  default     = false
}

variable "archive_on_destroy" {
  description = "Set to `true` to archive the project instead of deleting on destroy."
  type        = bool
  default     = false
}

variable "topics" {
  description = "The list of topics for the project."
  type        = set(string)
  default     = []
}
