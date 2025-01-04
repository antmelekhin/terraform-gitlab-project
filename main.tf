################################################################
# Project
################################################################

resource "gitlab_project" "this" {
  name             = var.name
  path             = var.path
  namespace_id     = var.namespace_id
  description      = var.description
  visibility_level = var.visibility_level

  archived           = var.archived
  archive_on_destroy = var.archive_on_destroy

  topics = sort(var.topics)
}
