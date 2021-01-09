variable "GITHUB_TOKEN" {
  type        = string
  description = "The personal access token"
  validation {
    condition     = length(var.GITHUB_TOKEN) > 4
    error_message = "The GITHUB_TOKEN value must be valid."
  }
  sensitive = true
}
variable "GITHUB_OWNER" {
  type        = string
  description = "your github username"
  validation {
    condition     = length(var.GITHUB_OWNER) > 4
    error_message = "The GITHUB_OWNER value must be valid."
  }
  sensitive = true
}


# Configure the GitHub Provider
provider "github" {
  token = var.GITHUB_TOKEN
  owner = var.GITHUB_OWNER
}


resource "github_repository" "plist-yaml-plist" {
  name          = "plist-yaml-plist"
  description   = "A plist-yaml-plist a dir"
  visibility    = "private"
  homepage_url  = "https://zackn9ne.blogspot.com/"
  has_projects  = false
  has_wiki      = false
  has_downloads = false
  has_issues    = true
  #  license_template = "mit"
  topics = ["example", "public", "infrastructure-as-code", "operations", "terraform", "github"]
}
