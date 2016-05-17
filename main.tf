provider "aws" {
  access_key  = "${var.access_key}"
  secret_key  = "${var.secret_key}"
  region      = "${var.region}"
}

/* App servers */
resource "aws_instance" "angoss-server" {
  count = 0
  ami = "${lookup(var.amis-angoss, var.region)}"
  instance_type = "m4.xlarge"
  subnet_id = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.vpc_security_group_id}"]
  key_name = "${aws_key_pair.dev-deployer.key_name}"
  source_dest_check = false
  tags = { 
    Name = "angoss-app-server-${count.index}"
  }
}
