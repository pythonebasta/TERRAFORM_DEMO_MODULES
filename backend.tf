terraform {
  backend "s3" {
    bucket  = "my-backend-module-bucket-2026" 
    key     = "progetto-moduli-root/terraform.tfstate" # Percorso isolato su S3
    region  = "eu-north-1"
    encrypt = false
  }
}
