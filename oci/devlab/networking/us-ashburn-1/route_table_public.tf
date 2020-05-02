resource "oci_core_route_table" "route_table_public" {
    #Required
    compartment_id = "${var.compartment_ocid}"
    route_rules {
        #Required
        network_entity_id = "${oci_core_internet_gateway.internet_gateway_public.id}"

        #Optional
        destination = "${var.route_table_route_rules_destination}"
        destination_type = "${var.route_table_route_rules_destination_type}"
    }
    vcn_id = "${oci_core_vcn.vcn_public.id}"

    #Optional
    display_name = "${var.route_table_display_name_public}"
    freeform_tags = { env = "dev" scope="devlab_vcn" project = "beta" }

}


