provider "aws" {
  region = "ap-northeast-1"
}
module "vpc" {
  source            = "./vpc-module"
  cidr_block        = "12.0.0.0/16"
  public_subnet     = "12.0.1.0/24"
  private_subnet    = "12.0.2.0/24"
  availability_zone = "ap-northeast-1a"
}

module "ec2" {
  source            = "./ec2-module"
  vpc_id            = module.vpc.vpc_id
  ami_id            = "ami-0bdd30a3e20da30a1"
  instance_type     = "t2.micro"
  key_id            = "to-do-key"
  public_subnet_id  = module.vpc.public_subnet_id
  availability_zone = "ap-northeast-1a"
}
output "public_ip" {
  value = module.ec2.public_ip
}