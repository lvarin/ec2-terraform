resource "aws_instance" "SSH" {
  ami           = data.aws_ami.latest_centos.id
  instance_type = var.instance_type
  key_name = "ssh_user"

  tags = {
    Name = var.subdomain_name
  }
}
