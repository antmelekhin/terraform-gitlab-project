# GitLab project module

This module manages GitLab projects.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | >= 17.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | >= 17.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_project.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the project. | `string` | n/a | yes |
| <a name="input_allow_merge_on_skipped_pipeline"></a> [allow\_merge\_on\_skipped\_pipeline](#input\_allow\_merge\_on\_skipped\_pipeline) | Set to `true` if you want to treat skipped pipelines as if they finished with success. | `bool` | `false` | no |
| <a name="input_archive_on_destroy"></a> [archive\_on\_destroy](#input\_archive\_on\_destroy) | Set to `true` to archive the project instead of deleting on destroy. | `bool` | `false` | no |
| <a name="input_archived"></a> [archived](#input\_archived) | Whether the project is in read-only mode (archived). | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | A description of the project. | `string` | `null` | no |
| <a name="input_merge_method"></a> [merge\_method](#input\_merge\_method) | Set the merge method. Valid values are `merge`, `rebase_merge`, `ff`. | `string` | `"merge"` | no |
| <a name="input_merge_pipelines_enabled"></a> [merge\_pipelines\_enabled](#input\_merge\_pipelines\_enabled) | Enable or disable merge pipelines. | `bool` | `false` | no |
| <a name="input_merge_requests_access_level"></a> [merge\_requests\_access\_level](#input\_merge\_requests\_access\_level) | Set the merge requests access level. Valid values are `disabled`, `private`, `enabled`. | `string` | `"enabled"` | no |
| <a name="input_merge_requests_enabled"></a> [merge\_requests\_enabled](#input\_merge\_requests\_enabled) | Enable merge requests for the project. | `bool` | `true` | no |
| <a name="input_merge_trains_enabled"></a> [merge\_trains\_enabled](#input\_merge\_trains\_enabled) | Enable or disable merge trains. Requires `merge_pipelines_enabled` to be set to `true` to take effect. | `bool` | `false` | no |
| <a name="input_namespace_id"></a> [namespace\_id](#input\_namespace\_id) | The namespace (group or user) of the project. Defaults to your user. | `number` | `null` | no |
| <a name="input_only_allow_merge_if_all_discussions_are_resolved"></a> [only\_allow\_merge\_if\_all\_discussions\_are\_resolved](#input\_only\_allow\_merge\_if\_all\_discussions\_are\_resolved) | Set to `true` if you want allow merges only if all discussions are resolved. | `bool` | `false` | no |
| <a name="input_only_allow_merge_if_pipeline_succeeds"></a> [only\_allow\_merge\_if\_pipeline\_succeeds](#input\_only\_allow\_merge\_if\_pipeline\_succeeds) | Set to `true` if you want allow merges only if a pipeline succeeds. | `bool` | `false` | no |
| <a name="input_path"></a> [path](#input\_path) | The path of the repository. | `string` | `null` | no |
| <a name="input_remove_source_branch_after_merge"></a> [remove\_source\_branch\_after\_merge](#input\_remove\_source\_branch\_after\_merge) | Enable `Delete source branch` option by default for all new merge requests. | `bool` | `false` | no |
| <a name="input_topics"></a> [topics](#input\_topics) | The list of topics for the project. | `set(string)` | `[]` | no |
| <a name="input_visibility_level"></a> [visibility\_level](#input\_visibility\_level) | Set to `public` to create a public project. Valid values are `private`, `internal`, `public`. | `string` | `"private"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_http_url_to_repo"></a> [http\_url\_to\_repo](#output\_http\_url\_to\_repo) | URL that can be provided to `git clone` to clone the repository via HTTPS. |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_name"></a> [name](#output\_name) | The name of the project. |
| <a name="output_path_with_namespace"></a> [path\_with\_namespace](#output\_path\_with\_namespace) | The path of the repository with namespace. |
| <a name="output_ssh_url_to_repo"></a> [ssh\_url\_to\_repo](#output\_ssh\_url\_to\_repo) | URL that can be provided to `git clone` to clone the repository via SSH. |
| <a name="output_web_url"></a> [web\_url](#output\_web\_url) | URL that can be used to find the project in a browser. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
