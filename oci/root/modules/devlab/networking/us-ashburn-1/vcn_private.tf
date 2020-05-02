resource "oci_core_vcn" "vcn_private" {
    #Required
    cidr_block = "${var.vcn_private_cidr_block}"
    compartment_id = "${var.compartment_ocid}"

    #Optional
    display_name = "${var.vcn_private_display_name}"
    dns_label = "${var.vcn_private_dns_label}"
    freeform_tags = { env = "dev" scope="devlab_vcn" project = "beta" }
}



