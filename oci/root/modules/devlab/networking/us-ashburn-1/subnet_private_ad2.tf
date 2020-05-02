resource "oci_core_subnet" "subnet_private_ad2" {
    #Required
    cidr_block = "${var.subnet_private_cidr_block_ad2}"
    compartment_id = "${var.compartment_ocid}"
    availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[1],"name")}"
    vcn_id = "${oci_core_vcn.vcn_private.id}"
    prohibit_public_ip_on_vnic = "true"

    #Optional
    display_name = "${var.subnet_private_display_name_ad2}"
    dns_label = "${var.subnet_dns_label_ad2}"
    freeform_tags = { env = "dev" scope="devlab_subnet" project = "beta" }
}



