terraform {
  backend "s3" {
    bucket = "for-tf-state"
    key = "lesson7/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}
module "ec2" {
  source = "./modules/EC2"
  name = "lesson7"
}

module "RDS" {
  source = "./modules/RDS"
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "8.0.20"
  instance_class       = "db.t2.micro"
  name                 = "tfdb"
  username             = "frost"
  password             = "Baracuda7777"
  skip_final_snapshot  = true
  publicly_accessible  = true
}

module "S3" {
  source = "./modules/S3"
  bucket_name = "test-tf-frost"
  acl = "public-read-write"
}