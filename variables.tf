variable "location" {
  description = "(Opcional) Região na AWS"
  type        = string

  default = "us-east-1"
}

variable "instance_tags" {
  description = "(Opcional) Tags para a instância"
  type        = map(string)

  default = {
    owner      = "douglas"
    managed_by = "terraform"
  }
}
