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
| <a name="input_archive_on_destroy"></a> [archive\_on\_destroy](#input\_archive\_on\_destroy) | Set to `true` to archive the project instead of deleting on destroy. | `bool` | `false` | no |
| <a name="input_archived"></a> [archived](#input\_archived) | Whether the project is in read-only mode (archived). | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | A description of the project. | `string` | `null` | no |
| <a name="input_namespace_id"></a> [namespace\_id](#input\_namespace\_id) | The namespace (group or user) of the project. Defaults to your user. | `number` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | The path of the repository. | `string` | `null` | no |
| <a name="input_topics"></a> [topics](#input\_topics) | The list of topics for the project. | `set(string)` | `[]` | no |
| <a name="input_visibility_level"></a> [visibility\_level](#input\_visibility\_level) | Set to `public` to create a public project. Valid values are `private`, `internal`, `public`. | `string` | `"public"` | no |

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
