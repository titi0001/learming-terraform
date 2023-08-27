# Terraform para AWS


## Criar um container com terraform e acessar o container
`docker run -it -v $PWD:/app -w /app --entrypoint "" hashicorp/terraform:light sh`

## Criar as variáveis de ambiente aws
`export AWS_ACCESS_KEY_ID="chave de acesso do usuário"`  
`export AWS_SECRET_ACCESS_KEY="chave de acesso secreta"`  
