terraform {
  backend "s3" {
    bucket  = "my-backend-module-bucket-2026" # Inserisci qui il tuo bucket di stato reale
    key     = "progetto-moduli-root/terraform.tfstate" # Percorso isolato su S3
    region  = "eu-north-1"
    encrypt = false
  }
}
