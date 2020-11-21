provider "aws" {
  version = "~> 2.0"
  region  = "us-west-2"
}

variable "key" {
  default = {
    name        = "cloudformation-ssh-key"
    public_key  = "public_key.pub"
    private_key = "private_key.pem"
  }
}

resource "aws_key_pair" "key" {
  key_name   = "${terraform.workspace}-${var.key.name}"
  public_key = file("${var.key.public_key}")
}
