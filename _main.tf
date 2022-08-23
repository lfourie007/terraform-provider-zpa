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

  