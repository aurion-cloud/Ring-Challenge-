resource "aws_instance" "ring_servers" {
  count                  = var.number_of_instances
  ami                    = data.aws_ami.aws_basic_linux.id
  instance_type          = var.ec2_type
  subnet_id              = data.aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.Ring_sg.id]
  key_name               = var.my_keypair
  user_data              = file("user-data.sh")

  tags = {
    Name = "Ring_Server_${count.index + 1}"
  }
}
