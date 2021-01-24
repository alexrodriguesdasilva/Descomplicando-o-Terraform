/*
Bloco do tipo "output"
Objetivo de retornar o IP Publico no momento do terraform apply
Por baixo dos panos a linha value = aws_instance.web.public_ip
busca o retorno em um data do recurso "aws_instance" chamado "web"
o campo public_ip, retornando seu valor
*/
output "ip_address" {
  value = aws_instance.web.public_ip
}

/*
Bloco do tipo "output"
Objetivo de retornar o DNS Publico no momento do terraform apply
Por baixo dos panos a linha value = aws_instance.web.public_dns
busca o retorno em um data do recurso "aws_instance" chamado "web"
o campo public_ip, retornando seu valor
*/
output "dns_name" {
  value = aws_instance.web.public_dns
}