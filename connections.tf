provider "aws" {
  region  = "us-east-1"
}

provider "google"{
  credentials = file("/Users/babu/.gcloud/cloud-212723-14a65701562a.json")
  project ="cloud-212723"
  region = "us-west1"
}

provider "azurerm"{

  subscription_id = "0"
  client_id = "1"
  client_secret = "2"
  tenant_id = "3"
}

provider "oci" {
  tenancy_ocid = "var.tenancy_ocid"
  user_ocid = "var.user_ocid"
  fingerprint = "var.fingerprint"
  private_key_path = "var.private_key_path"
  region = "var.region"
}

