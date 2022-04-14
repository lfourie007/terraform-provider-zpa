package zpa

import (
	"testing"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/resource"
)

func TestAccDataSourceScimAttributeHeader_Basic(t *testing.T) {
	resource.Test(t, resource.TestCase{
		PreCheck:  func() { testAccPreCheck(t) },
		Providers: testAccProviders,
		Steps: []resource.TestStep{
			{
				Config: testAccCheckDataSourceScimAttributeHeaderConfig_basic,
				Check: resource.ComposeTestCheckFunc(
					testAccDataSourceScimAttributeHeaderCheck("data.zpa_scim_attribute_header.email_value"),
					testAccDataSourceScimAttributeHeaderCheck("data.zpa_scim_attribute_header.email_value"),
				),
			},
		},
	})
}

func testAccDataSourceScimAttributeHeaderCheck(name string) resource.TestCheckFunc {
	return resource.ComposeTestCheckFunc(
		resource.TestCheckResourceAttrSet(name, "id"),
		resource.TestCheckResourceAttrSet(name, "name"),
		resource.TestCheckResourceAttrSet(name, "idp_name"),
	)
}

const testAccCheckDataSourceScimAttributeHeaderConfig_basic = `
data "zpa_scim_attribute_header" "email_value" {
    name = "emails.value"
    idp_name = "SGIO-User-Okta"
}
`
