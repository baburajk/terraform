# Configure the Oracle Cloud Infrastructure provider with an API Key

#Get a list of regions
data "oci_identity_regions" "all_regions" {
}

# Get a list of Availability Domains
data "oci_identity_availability_domains" "ads" {
  compartment_id = "${var.tenancy_ocid}"

}

data "oci_core_vcns" "vcns" {
    #Required
    compartment_id = "${var.compartment_ocid}"
}

# Output the result
output "show-regions" {
  value = "${data.oci_identity_regions.all_regions.regions}"
}

output "show-ads" {
  value = "${data.oci_identity_availability_domains.ads.availability_domains}"
}




