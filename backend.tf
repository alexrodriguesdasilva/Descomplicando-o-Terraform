/*
Bloco do tipo backend
Bloco para indicar que queremos gravar o arquivo de estado
(.tfstate) remotamente
O bloco abaixo indica que esse arquivo será gravado em
um bucket S3 já existente na AWS
*/
terraform {
  backend "s3" {
      bucket        = "descomplicando-terraform-alerodrigues-tfstates"
      key           = "terraform-test.tfstate"
      region        = "us-east-1"
  }
}