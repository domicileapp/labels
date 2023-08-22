# this repo
resource "github_repository" "labels" {
  name        = "labels"
  description = "Label configuration storage for the domicileapp org."

  vulnerability_alerts = true
  visibility           = "public"
  has_issues           = true
  has_discussions      = false
  has_projects         = false
  has_wiki             = false
}

resource "github_repository" "domicile" {
  name        = "domicile"
  description = "An application to help those with executive dysfunction manage household tasks, inventories, and life."

  homepage_url = "https://domicile.patrickblack.dev/"

  topics = [
    "management",
    "self-improvement",
    "todo-app",
  ]

  # pages {
  #   build_type = "workflow"
  #   cname      = "domicile.patrickblack.dev"

  #   source {
  #     branch = "next"
  #     path   = "/"
  #   }
  # }

  vulnerability_alerts = true
  visibility           = "public"
  allow_auto_merge     = true
  has_issues           = true
  has_discussions      = true
  has_projects         = true
  has_wiki             = false
}
