resource "aws_instance" "ring_public_server" {
  count                  = var.number_of_instances
  ami                    = data.aws_ami.aws_basic_linux_ami.id
  instance_type          = var.ec2_type
  subnet_id              = data.aws_subnet.public-ring.id
  vpc_security_group_ids = [aws_security_group.ring_public_sg1.id]
  key_name               = var.my_keypair
  user_data              = file("user-data.sh")

  tags = {
    Name = "ring_public_server_${count.index + 1}"
  }
}

