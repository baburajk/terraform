
module "devlab" {
	source = "./modules/devlab/networking/us-ashburn-1"
	compartment_ocid = "ocid1.compartment.oc1..aaaaaaaaqrbtdnsy565dgpghxmazs2hvxpkrjzr5fz6xbqvd6mqafeyr2cvva"
	user_ocid="ocid1.user.oc1..aaaaaaaaqpoha53iaqljs5tomsfzmv3ani36uzm5636iixf27iprdedczamaa"
	tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaajlukxmpvcv3vidnikknpit32r6nme6cskowxrbjz67iln2qjcroqq"
	region="us-ashburn-1"
        private_key_path="/Users/baburaj/.oci/devopsx/oci_api_key_baburaj.kallarakkal.pem"
}


