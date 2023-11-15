resource "aws_instance" "ubuntu-instance" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = "mykey"
  security_groups = ["${aws_security_group.ubuntu-sg.name}"]
  user_data       = <<-EOF
                    #!/bin/bash
                    sudo hostnamectl hostname demo-ec2
                    EOF

  ebs_block_device {
    device_name           = "/dev/sdf"
    volume_size           = 30
    volume_type           = "gp2"
    delete_on_termination = true
  }


  tags = {
    Name = "Ubuntu-EC2"
  }
}