terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }

  cloud {
    organization = "domicile"

    workspaces {
      name = "labels"
    }
  }
}

provider "github" {
  owner = "domicileapp"
}
