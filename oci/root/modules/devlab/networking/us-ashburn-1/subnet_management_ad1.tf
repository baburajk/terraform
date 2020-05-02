resource "oci_core_subnet" "subnet_management_ad1" {
    #Required
    cidr_block = "${var.subnet_management_cidr_block_ad1}"
    compartment_id = "${var.compartment_ocid}"
    availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[0],"name")}"
    vcn_id = "${oci_core_vcn.vcn_management.id}"
    prohibit_public_ip_on_vnic = "true"

    #Optional
    display_name = "${var.subnet_management_display_name_ad1}"
    dns_label = "${var.subnet_dns_label_ad1}"
    freeform_tags = { env = "dev" scope="devlab_subnet" project = "beta" }
}



