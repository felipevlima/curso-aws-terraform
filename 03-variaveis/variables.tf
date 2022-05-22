variable "environment" {
  type        = string
  description = ""
}

variable "aws_region" {
  type        = string
  description = ""
}

variable "aws_profile" {
  type        = string
  description = ""
}

variable "instace_ami" {
  type        = string
  description = ""
}

variable "instace_type" {
  type        = string
  description = ""
}

variable "instace_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS"
  }
}
