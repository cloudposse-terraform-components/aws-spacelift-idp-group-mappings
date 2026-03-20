terraform {
  required_version = ">= 1.3"

  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = ">= 0.1.31"
    }
    utils = {
      source  = "cloudposse/utils"
      version = ">= 2.0.0, < 3.0.0"
    }
  }
}
