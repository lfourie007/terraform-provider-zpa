# Configure ZPA provider source and version
terraform {
  required_providers {
    zpa = {
      source = "zscaler/zpa"
      version = "2.2.0"
    }
  }
}
// resource "zpa_app_connector" "clydeguru_skytap_key-1636372417036" {