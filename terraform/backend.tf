terraform {
  cloud {
    organization = "forward32"

    workspaces {
      name = "hexlet-terraform"
    }
  }
}
