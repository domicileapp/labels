resource "github_issue_label" "category" {
  name        = "category/${each.key}"
  description = each.value.description
  color       = each.value.color

  repository = github_repository.domicile.name

  for_each = local.category
}

resource "github_issue_label" "lifecycle" {
  name        = "lifecycle/${each.key}"
  description = each.value.description
  color       = each.value.color

  repository = github_repository.domicile.name

  for_each = local.lifecycle
}

resource "github_issue_label" "type" {
  name        = "type/${each.key}"
  description = each.value.description
  color       = each.value.color

  repository = github_repository.domicile.name

  for_each = local.type
}

resource "github_issue_label" "tracking" {
  color = "f8f8f8"
  name  = "tracking"

  description = "Adding this label adds the issue or PR to the project for tracking."

  repository = github_repository.domicile.name
}
