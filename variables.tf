################################################################
# Project
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
  type        = number
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
  default     = "private"
}

variable "allow_merge_on_skipped_pipeline" {
  description = "Set to `true` if you want to treat skipped pipelines as if they finished with success."
  type        = bool
  default     = false
}

variable "merge_method" {
  description = "Set the merge method. Valid values are `merge`, `rebase_merge`, `ff`."
  type        = string
  default     = "merge"
}

variable "merge_pipelines_enabled" {
  description = "Enable or disable merge pipelines."
  type        = bool
  default     = false
}

variable "merge_requests_access_level" {
  description = "Set the merge requests access level. Valid values are `disabled`, `private`, `enabled`."
  type        = string
  default     = "enabled"
}

variable "merge_requests_enabled" {
  description = "Enable merge requests for the project."
  type        = bool
  default     = true
}

variable "merge_trains_enabled" {
  description = "Enable or disable merge trains. Requires `merge_pipelines_enabled` to be set to `true` to take effect."
  type        = bool
  default     = false
}

variable "only_allow_merge_if_all_discussions_are_resolved" {
  description = "Set to `true` if you want allow merges only if all discussions are resolved."
  type        = bool
  default     = false
}

variable "only_allow_merge_if_pipeline_succeeds" {
  description = "Set to `true` if you want allow merges only if a pipeline succeeds."
  type        = bool
  default     = false
}

variable "remove_source_branch_after_merge" {
  description = "Enable `Delete source branch` option by default for all new merge requests."
  type        = bool
  default     = false
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
