locals {
  colors = {
    "red"      = "B60205"
    "orange"   = "D93F0B"
    "yellow"   = "FBCA04"
    "green"    = "0E8A16"
    "teal"     = "006B75"
    "blue"     = "1D76DB"
    "darkblue" = "0052CC"
    "purple"   = "5319E7"

    "light_red"      = "E99695"
    "light_orange"   = "F9D0C4"
    "light_yellow"   = "FEF2C0"
    "light_green"    = "C2E0C6"
    "light_teal"     = "BFDADC"
    "light_blue"     = "C5DEF5"
    "light_darkblue" = "BFD4F2"
    "light_purple"   = "D4C5F9"
  }
  lifecycle = {
    "blocked" = {
      description = "Cannot move forward until some roadblock is lifted",
      color       = local.colors.purple
    }
    "approved" = {
      description = "Feature or request is planned to be implemented",
      color       = local.colors.purple
    }
    "needs-info" = {
      description = "Issue or PR needs additional information",
      color       = local.colors.purple
    }
    "needs-pr" = {
      description = "Can be paired with the lifecycle/approved; needs PR with feature/fix",
      color       = local.colors.purple
    }
    "needs-proposal" = {
      description = "A large feature or change in development pattern that needs community feedback.",
      color       = local.colors.purple
    }
    "needs-rebase" = {
      description = "Can be paired with the lifecycle/approved; needs rebase with @next or @main branch before merging.",
      color       = local.colors.purple
    }
    "rejected" = {
      description = "Will not be implemented at this time.",
      color       = local.colors.purple
    }
  }

  category = {
    "deploy" = {
      description = "",
      color       = local.colors.light_purple
    }
    "deps" = {
      description = "",
      color       = local.colors.light_purple
    }
    "web" = {
      description = "",
      color       = local.colors.light_purple
    }
    "api" = {
      description = "",
      color       = local.colors.light_purple
    }
  }

  type = {
    "bug" = {
      description = "A bug in Domicile; unintended behavior.",
      color       = local.colors.yellow
    }
    "deprecation" = {
      description = "Related to a feature or part of code being deprecated",
      color       = local.colors.yellow
    }
    "docs" = {
      description = "Related to documentation",
      color       = local.colors.yellow
    }
    "feature" = {
      description = "A feature request for Domicile; new or enhanced functionality",
      color       = local.colors.yellow
    }
    "meta" = {
      description = "Internal repo conversations. Typically should be in a discussion instead of an issue.",
      color       = local.colors.yellow
    }
    "security" = {
      description = "Relating to security. Could include authentication/authorization or vulnerabilities.",
      color       = local.colors.yellow
    }
    "support" = {
      description = "Questions, supporting users, etc.",
      color       = local.colors.yellow
    }
    "tests" = {
      description = "CI/CD, testing, etc. for domicile.",
      color       = local.colors.yellow
    }
  }
}

variable "type_labels" {
  type = map(string)
  default = {
    "bug"         = "A bug in Domicile; unintended behavior."
    "deprecation" = "Related to a feature or part of code being deprecated"
    "docs"        = "Related to documentation"
    "feature"     = "A feature request for Domicile; new or enhanced functionality"
    "meta"        = "Internal repo conversations. Typically should be in a discussion instead of an issue."
    "security"    = "Relating to security. Could include authentication/authorization or vulnerabilities."
    "support"     = "Questions, supporting users, etc."
    "tests"       = "CI/CD, testing, etc. for domicile."
  }
}
