variable "ami" {
    description = "ami information"
    type = string
    default = "ami-04581fbf744a7d11f"
}

variable "instance-type" {
    default = "t2.micro"
}

variable "env" {
    default = "dev"
}

variable "instance-name" {
  default = "Postgresql_Server"
}

variable "team-name"{
    default = "dev-team"
}
