terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }

    datadog = {
      source = "DataDog/datadog"
    }
  }
}

variable "do_token" {}

variable "datadog_api_key" {}
variable "datadog_app_key" {}
variable "datadog_api_url" {}

provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_ssh_key" "terraform" {
  name = "yury@dell"
}

provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
  api_url = var.datadog_api_url
}
