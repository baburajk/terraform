module "networking" {
        source  	    = "../modules/services/networking"
        env_prefix      = "stage"
        managed_by      = "terraform"
}

