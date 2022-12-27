terraform {
  backend "remote" {
    organization = "hashicorp-learn"
    workspaces {
      name = "learn-terraform-pipelines-k8s"
    }
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.55"
    }
  }

  required_version = ">= 1.1.0"
}
