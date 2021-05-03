resource "aws_instance" "tf-lesson" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    Name = var.name
  }
}

