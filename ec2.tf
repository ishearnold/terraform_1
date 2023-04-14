data "aws_security_group" "sec_group1" {
  name = "webserver"
  id = "sg-04d1ce232df0c7722"
}



resource "aws_instance" "demo1" {
  ami = var.ami
  instance_type = var.instance-type
  user_data = file("${path.module}/postgresql.sh") 
  vpc_security_group_ids = [data.aws_security_group.sec_group1.id]
  key_name = "dev-wdp"
  tags = {
    "Name" = var.instance-name
    "Env" = var.env
    "Team" = var.team-name
  }
}

