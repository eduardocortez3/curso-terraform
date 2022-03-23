# Inicializar o terraform no diretório
terraform init -backend=true -backend-config="config/local/backend.hcl"
# Executar o plan
terraform plan -var-file=config/local/terraform.tfvars
