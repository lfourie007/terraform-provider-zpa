package zpa

import (
	"fmt"
	"testing"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/acctest"
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/resource"
	"github.com/hashicorp/terraform-plugin-sdk/v2/terraform"
)

func TestAccDataSourceLSSConfigController_Basic(t *testing.T) {
	rName := acctest.RandString(15)
	rDesc := acctest.RandString(15)
	resourceName := "data.zpa_lss_config_controller.by_id"

	resource.Test(t, resource.TestCase{
		PreCheck: func() {
			testAccPreCheck(t)
		},
		Providers: testAccProviders,
		Steps: []resource.TestStep{
			{
				Config: testAccDataSourceLSSConfigControllerBasic(rName, rDesc),
				Check: resource.ComposeTestCheckFunc(
					testAccDataSourceLSSConfigController(resourceName),
					resource.TestCheckResourceAttr(resourceName, "config.0.name", "test-lss-config-"+rName),
					resource.TestCheckResourceAttr(resourceName, "config.0.description", "test-lss-config-"+rDesc),
					resource.TestCheckResourceAttr(resourceName, "config.0.enabled", "true"),
					resource.TestCheckResourceAttr(resourceName, "config.0.lss_host", "192.168.1.1"),
					resource.TestCheckResourceAttr(resourceName, "config.0.source_log_type", "zpn_trans_log"),
					resource.TestCheckResourceAttr(resourceName, "config.0.use_tls", "true"),
				),
				PreventPostDestroyRefresh: true,
			},
		},
	})
}

func testAccDataSourceLSSConfigControllerBasic(rName, rDesc string) string {
	return fmt.Sprintf(`

data "zpa_lss_config_log_type_formats" "zpn_trans_log" {
	log_type="zpn_trans_log"
}

resource "zpa_app_connector_group" "test_app_connector_lss" {
	name                          = "test-app-connector-lss"
	description                   = "test-app-connector-lss"
	enabled                       = true
	country_code                  = "US"
	latitude                      = "37.3382082"
	longitude                     = "-121.8863286"
	location                      = "San Jose, CA, USA"
	upgrade_day                   = "SUNDAY"
	upgrade_time_in_secs          = "66600"
	lss_app_connector_group		  = true
	override_version_profile      = true
	version_profile_id            = 2
	dns_query_type                = "IPV4"
}

resource "zpa_lss_config_controller" "test_lss_config_controller" {
	config {
		name            = "test-lss-config-%s"
		description     = "test-lss-config-%s"
		enabled         = true
		format          = data.zpa_lss_config_log_type_formats.zpn_trans_log.json
		lss_host        = "192.168.1.1"
		lss_port        = "12001"
		source_log_type = "zpn_trans_log"
		use_tls         = true
	}
	policy_rule_resource {
		name   = "policy_rule_resource-lss_auth_logs"
		action = "ALLOW"
		conditions {
		  negated  = false
		  operator = "OR"
		  operands {
			object_type = "CLIENT_TYPE"
			values      = ["zpn_client_type_exporter"]
		  }
		  operands {
			object_type = "CLIENT_TYPE"
			values      = ["zpn_client_type_ip_anchoring"]
		  }
		  operands {
			object_type = "CLIENT_TYPE"
			values      = ["zpn_client_type_zapp"]
		  }
		  operands {
			object_type = "CLIENT_TYPE"
			values      = ["zpn_client_type_edge_connector"]
		  }
		  operands {
			object_type = "CLIENT_TYPE"
			values      = ["zpn_client_type_machine_tunnel"]
		  }
		  operands {
			object_type = "CLIENT_TYPE"
			values      = ["zpn_client_type_browser_isolation"]
		  }
		  operands {
			object_type = "CLIENT_TYPE"
			values      = ["zpn_client_type_slogger"]
		  }
		}
	  }
	connector_groups {
		id = [ zpa_app_connector_group.test_app_connector_lss.id ]
	}
	depends_on = [ zpa_app_connector_group.test_app_connector_lss ]
}

data "zpa_lss_config_controller" "by_id" {
	id = zpa_lss_config_controller.test_lss_config_controller.id
	depends_on = [ zpa_lss_config_controller.test_lss_config_controller ]
}

	`, rName, rDesc)
}

func testAccDataSourceLSSConfigController(name string) resource.TestCheckFunc {
	return func(s *terraform.State) error {
		_, ok := s.RootModule().Resources[name]
		if !ok {
			return fmt.Errorf("root module has no data source called %s", name)
		}
		return nil
	}
}
