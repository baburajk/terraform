resource "oci_core_internet_gateway" "internet_gateway_public" {
    #Required
    compartment_id = "${var.compartment_ocid}"
    vcn_id = "${oci_core_vcn.vcn_public.id}"

    #Optional
    enabled = "${var.internet_gateway_enabled}"
    display_name = "${var.internet_gateway_display_name_public}"
    freeform_tags = { env = "dev" scope="devlab_vcn" project = "beta" }

}


