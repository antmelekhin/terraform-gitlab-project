terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 17.5.0"
    }
  }
  required_version = ">= 0.13"
}
