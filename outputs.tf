################################################################
# Project
################################################################

output "name" {
  description = "The name of the project."
  value       = gitlab_project.this.name
}

output "path_with_namespace" {
  description = "The path of the repository with namespace."
  value       = gitlab_project.this.path_with_namespace
}

output "id" {
  description = "The ID of this resource."
  value       = gitlab_project.this.id
}

output "http_url_to_repo" {
  description = "URL that can be provided to `git clone` to clone the repository via HTTPS."
  value       = gitlab_project.this.http_url_to_repo
}

output "ssh_url_to_repo" {
  description = "URL that can be provided to `git clone` to clone the repository via SSH."
  value       = gitlab_project.this.ssh_url_to_repo
}

output "web_url" {
  description = "URL that can be used to find the project in a browser."
  value       = gitlab_project.this.web_url
}
