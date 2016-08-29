provider "aws" {
  region = "us-east-1"
}

module "demo" {
  source = "../modules/demo1"
}

output "demo_help" {
  value = "${module.demo.help}"
}
