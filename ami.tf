# Get the latest ECS AMI
data "aws_ami" "latest_centos" {
  most_recent = true

  filter {
    name   = "name"
    values = ["CentOS 7*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["aws-marketplace"]
}


