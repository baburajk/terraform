
data "oci_identity_availability_domains" "ADs" {
        #Required
        compartment_id = "${var.tenancy_ocid}"
}


