terraform {
  cloud {

    organization = "tfhub"
    project = "dev"

    workspaces {
      name = "tf-github-playgroung"
    }
  }

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}
