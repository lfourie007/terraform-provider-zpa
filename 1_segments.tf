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

// }

// Create application Segment -dev1
resource "zpa_application_segment" "dev1_application" {
  name             = "dev1 application"
  description      = "dev1 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev1.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}
// Create application Segment -dev2
resource "zpa_application_segment" "dev2_application" {
  name             = "dev2 application"
  description      = "dev2 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev2.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}
// Create application Segment -dev3
resource "zpa_application_segment" "dev3_application" {
  name             = "dev3 application"
  description      = "dev3 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev3.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}
// Create application Segment -dev4
resource "zpa_application_segment" "dev4_application" {
  name             = "dev4 application"
  description      = "dev4 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev4.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}
// Create application Segment -dev5
resource "zpa_application_segment" "dev5_application" {
  name             = "dev5 application"
  description      = "dev5 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev5.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}
// Create Server Group
resource "zpa_server_group" "dev_servers" {
  name              = "dev Servers"
  description       = "dev Servers"
  enabled           = true
  dynamic_discovery = false
  app_connector_groups {
    id = [data.zpa_app_connector_group.dc_connector_group.id]
  }
  servers {
    id = [zpa_application_server.dev_app_server.id]
  }
}

// Create application Server
resource "zpa_application_server" "dev_app_server" {
  name        = "dev app Server"
  description = "dev app Server"
  address     = "dev.clydetwo.guru"
  enabled     = true
}

// Create Segment Group
resource "zpa_segment_group" "dev_app_group" {
  name            = "dev app group"
  description     = "dev app group"
  enabled         = true
  policy_migrated = true
}

// Retrieve app Connector Group
data "zpa_app_connector_group" "dc_connector_group" {
  name = "clydetwo_skytap_ac1"
}