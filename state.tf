terraform {
    backend "s3" {
        bucket = "myprojecdevops"
        key    = "parameters/terraform.tfstate"
        region = "us-east-1"
    }
}