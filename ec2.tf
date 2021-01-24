/*
Bloco do tipo "data"
Objetivo de "não chumbar" um ami no codigo, para assim trazer uma ami mais recente
*/
data "aws_ami" "ubuntu" {
  most_recent = true #trazer a mais recente

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu
}

/*
Bloco do tipo "resource" 
Declara a criação de recurso
resource "tipo_recurso" "nome_bloco" {
    corpo do bloco
}
*/
resource "aws_instance" "web" {
    ami                         = data.aws_ami.ubuntu.id
    instance_type               = "t2.micro"
    key_name                    = "terraform-aws"

    tags = {
        Name                    = "HelloWord"
    }
    subnet_id                   = "subnet-0b38d89493d213e5a"
    associate_public_ip_address = true
    security_groups             = [ "sg-071b3acba09cb41e1" ]
}