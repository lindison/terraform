resource "aws_instance" "example" {
  ami = "${lookup(var.AMIS, var.AWS_REGION )}"
  instance_type = "t2.micro"
}

resource "aws_ebs_volume" "ebs-volume-1" {
  availability_zone = "us-west-2a"
  size = 20
  type = "gp2"
  tags {
    Name = "extra volume data"
  }
}

resource "aws_volume_attachment" "ebs-volume-1-attachment" {
  device_name = "/dev/xvdh"
  volume_id = "${aws_ebs_volume.ebs-volume-1.id}"
  instance_id = "${aws_instance.example.id}"
}