terraform {
  required_version = ">= 1.5.0"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

variable "prefix" {
  type    = string
  default = "demo"
}

resource "random_pet" "name" {
  prefix = var.prefix
  length = 2
}

output "generated_name" {
  value = random_pet.name.id
}
