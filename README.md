# Terraform para AWS


## Criar um container com terraform e acessar o container
`docker run -it -v $PWD:/app -w /app --entrypoint "" hashicorp/terraform:light sh`

# powershell
`docker run -it -v ${PWD}:/app -w /app --entrypoint "" hashicorp/terraform:light sh`

## Criar as variáveis de ambiente aws
### criar uma arquivo .env para salvar as credenciais e keys
`export AWS_ACCESS_KEY_ID="KEY_ID"`  
`export AWS_SECRET_ACCESS_KEY="SECRET_KEY"`  

## Iniciar o Terraform
`terraform init`  

## Comandos Básicos
`terraform init --upgrade`  
`terraform plan -out plan`  
`terraform apply "plan"`  
`terraform destroy`