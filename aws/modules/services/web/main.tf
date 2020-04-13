resource "aws_instance" "prod_web"{
  count         = 2
  ami           = "ami-0551d2acb56d6e88c"
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.subnetsg.id]
  subnet_id = aws_subnet.devnet_subnet1.id

}
