terraform {
  backend "remote" {
    organization = "matjah"
    workspaces {
      name = "learn-terraform-pipelines-k8s"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  required_version = ">= 1.1.0"
}
