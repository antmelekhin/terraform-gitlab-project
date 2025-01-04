provider "gitlab" {}

module "public_repository" {
  source = "../"

  name = "public-repository"
}
