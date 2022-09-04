####################
## Public facing ##
###################
// git add .
// git commit -a -m "destroy plan again s3"
// git push

# Configure ZPA provider source and version
terraform {
  required_providers {
    zpa = {
      source = "zscaler/zpa"
      version = "2.2.0"
    }
  }
}


// *************************** cut ***********************
// Create Server Group
resource "zpa_server_group" "dev_servers" {
  name              = "dev Servers"
  description       = "dev Servers created from terraform"
  enabled           = true
  dynamic_discovery = true
  app_connector_groups {
    id = [data.zpa_app_connector_group.dc_connector_group.id]
  }
  //servers {
  //  id = [zpa_application_server.dev_app_server.id]
  }

// Create application Server
//resource "zpa_application_server" "dev_app_server" {
//  name        = "dev app Server"
//  description = "dev app Server"
//  address     = "dev.clydetwo.guru"
//  enabled     = true
// }

// Create Segment Group
resource "zpa_segment_group" "dev_app_group" {
  name            = "dev app SG"
  description     = "id"
  enabled         = true
  policy_migrated = true
}

// Retrieve app Connector Group
data "zpa_app_connector_group" "dc_connector_group" {
  name = "clydetwo_skytap_ac1"
}   
