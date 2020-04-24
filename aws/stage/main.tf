module "networking" {
        source  	    = "../modules/services/networking"
        environment     = "stage"
        managed_by      = "terraform"
}

