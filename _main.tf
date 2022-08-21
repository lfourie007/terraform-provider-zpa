####################
## Public facing ##
###################

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

// Create application Segment -dev6
resource "zpa_application_segment" "dev6_application" {
  name             = "dev6 application"
  description      = "dev6 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev6.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev7
resource "zpa_application_segment" "dev7_application" {
  name             = "dev7 application"
  description      = "dev7 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev7.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev8
resource "zpa_application_segment" "dev8_application" {
  name             = "dev8 application"
  description      = "dev8 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev8.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev9
resource "zpa_application_segment" "dev9_application" {
  name             = "dev9 application"
  description      = "dev9 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev9.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev10
resource "zpa_application_segment" "dev10_application" {
  name             = "dev10 application"
  description      = "dev10 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev10.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev11
resource "zpa_application_segment" "dev11_application" {
  name             = "dev11 application"
  description      = "dev11 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev11.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev12
resource "zpa_application_segment" "dev12_application" {
  name             = "dev12 application"
  description      = "dev12 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev12.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev13
resource "zpa_application_segment" "dev13_application" {
  name             = "dev13 application"
  description      = "dev13 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev13.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev14
resource "zpa_application_segment" "dev14_application" {
  name             = "dev14 application"
  description      = "dev14 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev14.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev15
resource "zpa_application_segment" "dev15_application" {
  name             = "dev15 application"
  description      = "dev15 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev15.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev16
resource "zpa_application_segment" "dev16_application" {
  name             = "dev16 application"
  description      = "dev16 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev16.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev17
resource "zpa_application_segment" "dev17_application" {
  name             = "dev17 application"
  description      = "dev17 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev17.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev18
resource "zpa_application_segment" "dev18_application" {
  name             = "dev18 application"
  description      = "dev18 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev18.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev19
resource "zpa_application_segment" "dev19_application" {
  name             = "dev19 application"
  description      = "dev19 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev19.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev20
resource "zpa_application_segment" "dev20_application" {
  name             = "dev20 application"
  description      = "dev20 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev20.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev21
resource "zpa_application_segment" "dev21_application" {
  name             = "dev21 application"
  description      = "dev21 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev21.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev22
resource "zpa_application_segment" "dev22_application" {
  name             = "dev22 application"
  description      = "dev22 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev22.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev23
resource "zpa_application_segment" "dev23_application" {
  name             = "dev23 application"
  description      = "dev23 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev23.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev24
resource "zpa_application_segment" "dev24_application" {
  name             = "dev24 application"
  description      = "dev24 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev24.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev25
resource "zpa_application_segment" "dev25_application" {
  name             = "dev25 application"
  description      = "dev25 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev25.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev26
resource "zpa_application_segment" "dev26_application" {
  name             = "dev26 application"
  description      = "dev26 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev26.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev27
resource "zpa_application_segment" "dev27_application" {
  name             = "dev27 application"
  description      = "dev27 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev27.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev28
resource "zpa_application_segment" "dev28_application" {
  name             = "dev28 application"
  description      = "dev28 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev28.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev29
resource "zpa_application_segment" "dev29_application" {
  name             = "dev29 application"
  description      = "dev29 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev29.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev30
resource "zpa_application_segment" "dev30_application" {
  name             = "dev30 application"
  description      = "dev30 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev30.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev31
resource "zpa_application_segment" "dev31_application" {
  name             = "dev31 application"
  description      = "dev31 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev31.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev32
resource "zpa_application_segment" "dev32_application" {
  name             = "dev32 application"
  description      = "dev32 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev32.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev33
resource "zpa_application_segment" "dev33_application" {
  name             = "dev33 application"
  description      = "dev33 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev33.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev34
resource "zpa_application_segment" "dev34_application" {
  name             = "dev34 application"
  description      = "dev34 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev34.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev35
resource "zpa_application_segment" "dev35_application" {
  name             = "dev35 application"
  description      = "dev35 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev35.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev36
resource "zpa_application_segment" "dev36_application" {
  name             = "dev36 application"
  description      = "dev36 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev36.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev37
resource "zpa_application_segment" "dev37_application" {
  name             = "dev37 application"
  description      = "dev37 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev37.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev38
resource "zpa_application_segment" "dev38_application" {
  name             = "dev38 application"
  description      = "dev38 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev38.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev39
resource "zpa_application_segment" "dev39_application" {
  name             = "dev39 application"
  description      = "dev39 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev39.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev40
resource "zpa_application_segment" "dev40_application" {
  name             = "dev40 application"
  description      = "dev40 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev40.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev41
resource "zpa_application_segment" "dev41_application" {
  name             = "dev41 application"
  description      = "dev41 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev41.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev42
resource "zpa_application_segment" "dev42_application" {
  name             = "dev42 application"
  description      = "dev42 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev42.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev43
resource "zpa_application_segment" "dev43_application" {
  name             = "dev43 application"
  description      = "dev43 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev43.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev44
resource "zpa_application_segment" "dev44_application" {
  name             = "dev44 application"
  description      = "dev44 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev44.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev45
resource "zpa_application_segment" "dev45_application" {
  name             = "dev45 application"
  description      = "dev45 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev45.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev46
resource "zpa_application_segment" "dev46_application" {
  name             = "dev46 application"
  description      = "dev46 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev46.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev47
resource "zpa_application_segment" "dev47_application" {
  name             = "dev47 application"
  description      = "dev47 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev47.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev48
resource "zpa_application_segment" "dev48_application" {
  name             = "dev48 application"
  description      = "dev48 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev48.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev49
resource "zpa_application_segment" "dev49_application" {
  name             = "dev49 application"
  description      = "dev49 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev49.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev50
resource "zpa_application_segment" "dev50_application" {
  name             = "dev50 application"
  description      = "dev50 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev50.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev51
resource "zpa_application_segment" "dev51_application" {
  name             = "dev51 application"
  description      = "dev51 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev51.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev52
resource "zpa_application_segment" "dev52_application" {
  name             = "dev52 application"
  description      = "dev52 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev52.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev53
resource "zpa_application_segment" "dev53_application" {
  name             = "dev53 application"
  description      = "dev53 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev53.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev54
resource "zpa_application_segment" "dev54_application" {
  name             = "dev54 application"
  description      = "dev54 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev54.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev55
resource "zpa_application_segment" "dev55_application" {
  name             = "dev55 application"
  description      = "dev55 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev55.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev56
resource "zpa_application_segment" "dev56_application" {
  name             = "dev56 application"
  description      = "dev56 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev56.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev57
resource "zpa_application_segment" "dev57_application" {
  name             = "dev57 application"
  description      = "dev57 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev57.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev58
resource "zpa_application_segment" "dev58_application" {
  name             = "dev58 application"
  description      = "dev58 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev58.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}
// Create application Segment -dev59
resource "zpa_application_segment" "dev59_application" {
  name             = "dev59 application"
  description      = "dev59 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev59.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev60
resource "zpa_application_segment" "dev60_application" {
  name             = "dev60 application"
  description      = "dev60 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev60.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev61
resource "zpa_application_segment" "dev61_application" {
  name             = "dev61 application"
  description      = "dev61 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev61.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev62
resource "zpa_application_segment" "dev62_application" {
  name             = "dev62 application"
  description      = "dev62 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev62.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev63
resource "zpa_application_segment" "dev63_application" {
  name             = "dev63 application"
  description      = "dev63 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev63.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev64
resource "zpa_application_segment" "dev64_application" {
  name             = "dev64 application"
  description      = "dev64 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev64.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev65
resource "zpa_application_segment" "dev65_application" {
  name             = "dev65 application"
  description      = "dev65 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev65.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev66
resource "zpa_application_segment" "dev66_application" {
  name             = "dev66 application"
  description      = "dev66 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev66.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev67
resource "zpa_application_segment" "dev67_application" {
  name             = "dev67 application"
  description      = "dev67 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev67.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev68
resource "zpa_application_segment" "dev68_application" {
  name             = "dev68 application"
  description      = "dev68 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev68.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev69
resource "zpa_application_segment" "dev69_application" {
  name             = "dev69 application"
  description      = "dev69 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev69.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev70
resource "zpa_application_segment" "dev70_application" {
  name             = "dev70 application"
  description      = "dev70 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev70.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev71
resource "zpa_application_segment" "dev71_application" {
  name             = "dev71 application"
  description      = "dev71 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev71.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev72
resource "zpa_application_segment" "dev72_application" {
  name             = "dev72 application"
  description      = "dev72 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev72.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev73
resource "zpa_application_segment" "dev73_application" {
  name             = "dev73 application"
  description      = "dev73 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev73.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev74
resource "zpa_application_segment" "dev74_application" {
  name             = "dev74 application"
  description      = "dev74 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev74.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev75
resource "zpa_application_segment" "dev75_application" {
  name             = "dev75 application"
  description      = "dev75 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev75.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev76
resource "zpa_application_segment" "dev76_application" {
  name             = "dev76 application"
  description      = "dev76 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev76.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev77
resource "zpa_application_segment" "dev77_application" {
  name             = "dev77 application"
  description      = "dev77 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev77.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev78
resource "zpa_application_segment" "dev78_application" {
  name             = "dev78 application"
  description      = "dev78 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev78.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev100
resource "zpa_application_segment" "dev100_application" {
  name             = "dev100 application"
  description      = "dev100 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev100.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev80
resource "zpa_application_segment" "dev80_application" {
  name             = "dev80 application"
  description      = "dev80 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev80.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev81
resource "zpa_application_segment" "dev81_application" {
  name             = "dev81 application"
  description      = "dev81 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev81.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev82
resource "zpa_application_segment" "dev82_application" {
  name             = "dev82 application"
  description      = "dev82 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev82.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev83
resource "zpa_application_segment" "dev83_application" {
  name             = "dev83 application"
  description      = "dev83 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev83.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev84
resource "zpa_application_segment" "dev84_application" {
  name             = "dev84 application"
  description      = "dev84 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev84.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev85
resource "zpa_application_segment" "dev85_application" {
  name             = "dev85 application"
  description      = "dev85 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev85.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev86
resource "zpa_application_segment" "dev86_application" {
  name             = "dev86 application"
  description      = "dev86 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev86.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev87
resource "zpa_application_segment" "dev87_application" {
  name             = "dev87 application"
  description      = "dev87 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev87.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev88
resource "zpa_application_segment" "dev88_application" {
  name             = "dev88 application"
  description      = "dev88 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev88.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev89
resource "zpa_application_segment" "dev89_application" {
  name             = "dev89 application"
  description      = "dev89 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev89.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev90
resource "zpa_application_segment" "dev90_application" {
  name             = "dev90 application"
  description      = "dev90 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev90.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev91
resource "zpa_application_segment" "dev91_application" {
  name             = "dev91 application"
  description      = "dev91 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev91.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev92
resource "zpa_application_segment" "dev92_application" {
  name             = "dev92 application"
  description      = "dev92 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev92.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev93
resource "zpa_application_segment" "dev93_application" {
  name             = "dev93 application"
  description      = "dev93 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev93.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev94
resource "zpa_application_segment" "dev94_application" {
  name             = "dev94 application"
  description      = "dev94 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev94.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev95
resource "zpa_application_segment" "dev95_application" {
  name             = "dev95 application"
  description      = "dev95 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev95.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev96
resource "zpa_application_segment" "dev96_application" {
  name             = "dev96 application"
  description      = "dev96 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev96.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev97
resource "zpa_application_segment" "dev97_application" {
  name             = "dev97 application"
  description      = "dev97 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev97.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev98
resource "zpa_application_segment" "dev98_application" {
  name             = "dev98 application"
  description      = "dev98 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev98.clydetwo.guru"]
  segment_group_id = zpa_segment_group.dev_app_group.id
  server_groups {
    id = [zpa_server_group.dev_servers.id]
  }
}

// Create application Segment -dev99
resource "zpa_application_segment" "dev99_application" {
  name             = "dev99 application"
  description      = "dev99 application"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["dev99.clydetwo.guru"]
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