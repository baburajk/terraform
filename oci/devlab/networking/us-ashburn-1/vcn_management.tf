resource "oci_core_vcn" "vcn_management" {
    #Required
    cidr_block = "${var.vcn_management_cidr_block}"
    compartment_id = "${var.compartment_ocid}"

    #Optional
    display_name = "${var.vcn_management_display_name}"
    dns_label = "${var.vcn_management_dns_label}"
    freeform_tags = { env = "dev" scope="devlab_vcn" project = "beta" }
}



