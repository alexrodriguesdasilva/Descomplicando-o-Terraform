/*
Bloco para indicar o provider(Cloud)
que sera criada a infra-estrutura
Nesse caso estavamos utilizando a AWS
*/
provider "aws" {
    region          = "us-east-1"
    version         = "~> 3.0"
}