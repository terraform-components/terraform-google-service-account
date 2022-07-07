variable "project" {
  type = string
}

variable "name" {
  type = string
}

variable "permissions" {
  type    = list(string)
  default = []
}

