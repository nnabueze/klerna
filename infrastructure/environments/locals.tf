locals {
    // making only two zones available with in the region since 3 AZ per region
    az-count = "${length(data.aws_availability_zones.az-available.names) - 1}"
}