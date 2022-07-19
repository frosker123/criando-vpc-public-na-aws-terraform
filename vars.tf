variable "location" {
  default = "us-east-1"
  type    = string
}

variable "instance_tags" {
  type = map(string)
  default = {
    owner      = "douglas"
    managed_by = "terraform"
  }
}