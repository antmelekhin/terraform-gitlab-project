################################################################
# Project
################################################################

resource "gitlab_project" "this" {
  name             = var.name
  path             = var.path
  namespace_id     = var.namespace_id
  description      = var.description
  visibility_level = var.visibility_level

  allow_merge_on_skipped_pipeline                  = var.allow_merge_on_skipped_pipeline
  merge_method                                     = var.merge_method
  merge_pipelines_enabled                          = var.merge_pipelines_enabled
  merge_requests_access_level                      = var.merge_requests_access_level
  merge_requests_enabled                           = var.merge_requests_enabled
  merge_trains_enabled                             = var.merge_trains_enabled
  only_allow_merge_if_all_discussions_are_resolved = var.only_allow_merge_if_all_discussions_are_resolved
  only_allow_merge_if_pipeline_succeeds            = var.only_allow_merge_if_pipeline_succeeds
  remove_source_branch_after_merge                 = var.remove_source_branch_after_merge

  archived           = var.archived
  archive_on_destroy = var.archive_on_destroy

  topics = sort(var.topics)
}
