terraform {
  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = "1.36.0"
    }
    rancher2 = {
      source  = "rancher/rancher2"
      version = "4.1.0"
    }
  }
}

provider "equinix" {}

provider "http" {}

provider "rancher2" {
  api_url    = var.rancher_api_url
  access_key = var.rancher_access_key
  secret_key = var.rancher_secret_key
  insecure   = var.rancher_insecure
}
