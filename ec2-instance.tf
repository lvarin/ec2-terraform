resource "aws_instance" "ssh" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  key_name = "ssh_user"

  tags = {
    Name = var.subdomain_name
  }
}
