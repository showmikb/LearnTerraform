resource "aws_instance" "myec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.it
  tags          = { "Name" = "MYEC2" } #-${count.index}

}

resource "tls_private_key" "tlskey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


resource "aws_key_pair" "kp" {
  key_name   = "terraform-tlskey"
  public_key = tls_private_key.tlskey.public_key_openssh

  provisioner "local-exec" {
    command = "echo '${tls_private_key.tlskey.private_key_pem}' > ./jenkinskp.pem"
  }
}