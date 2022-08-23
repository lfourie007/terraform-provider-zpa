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

// Create application Segment -dev1
resource "zpa_application_segment" "dev1_application" {
  name             = "dev1 application"
  description      = "dev1 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80","80"]
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
//**************** cut ********************


// Retrieve Policy Types 
data "zpa_policy_type" "access_policy" {
    policy_type = "ACCESS_POLICY"
}

// Retrieve Policy Types zpa_segment_group
data "zpa_segment_group" "segment_group" {
    name = "dev app SG"
}

data "zpa_application_segment" "dev1"{
  name = "dev1 application"
}
data "zpa_application_segment" "dev2"{
  name = "dev2 application"
}
data "zpa_application_segment" "dev3"{
  name = "dev3 application"
}
data "zpa_application_segment" "dev4"{
  name = "dev4 application"
}
data "zpa_application_segment" "dev5"{
  name = "dev5 application"
}
data "zpa_idp_controller" "user_idp_name" {
 name = "Azure IdP"
}
data "zpa_scim_groups" "restricted_internet" {
  name     = "restricted_internet"
  idp_name = "Azure IdP"
}
resource "zpa_policy_access_rule" "dev1" {
  name                          = "allow dev segments"
  description                   = "allow dev segments created by terraform"
  action                        = "ALLOW"
  rule_order                     = 7
  operator = "AND"
  policy_set_id = data.zpa_policy_type.access_policy.id

  conditions {
    negated = false
    operator = "OR"
    operands {
      //name =  "id"
      object_type = "APP"
      lhs = "id"
      rhs = data.zpa_application_segment.dev1.id
    }
    operands {
      //name =  "id"
      object_type = "APP"
      lhs = "id"
      rhs = data.zpa_application_segment.dev2.id
    }
    operands {
      //name =  "id"
      object_type = "APP"
      lhs = "id"
      rhs = data.zpa_application_segment.dev3.id
    }
    operands {
      //name =  "id"
      object_type = "APP"
      lhs = "id"
      rhs = data.zpa_application_segment.dev4.id
    }
    operands {
      //name =  "id"
      object_type = "APP"
      lhs = "id"
      rhs = data.zpa_application_segment.dev5.id
    }
     operands {
      object_type = "APP_GROUP"
      lhs = "id"
      rhs = data.zpa_segment_group.segment_group.id
    }
  }

  conditions {
     negated = false
     operator = "OR"
    //operands {
    //  object_type = "IDP"
    //  lhs = "id"
    //  rhs = data.zpa_idp_controller.user_idp_name.id
    //}
    operands {
      object_type = "SCIM_GROUP"
      lhs = data.zpa_idp_controller.user_idp_name.id
      rhs = data.zpa_scim_groups.restricted_internet.id
      idp_id = data.zpa_idp_controller.user_idp_name.id
    }
  }
}
