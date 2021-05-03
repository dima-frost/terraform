variable "skip_final_snapshot" {
  type = bool
}
variable "publicly_accessible" {
  type = bool
}
variable "allocated_storage" {}

variable "engine" {}

variable "engine_version" {}

variable "instance_class" {
  default = "db.t2.micro"
}

variable "name" {}

variable "username" {}

variable "password" {}
