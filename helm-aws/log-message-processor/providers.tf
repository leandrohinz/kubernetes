terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.12.1"
    }
    #required_version = "=> 1.6.0"
  }
}

provider "aws" {
  region = "us-west-1"

}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" # Path to your Kubernetes config file
  }
}