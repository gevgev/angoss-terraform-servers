resource "aws_key_pair" "dev-deployer" {
  key_name     = "dev-deployer-key"
  public_key = "${file(\"ssh/insecure-angoss-deployer.pub\")}"
}
