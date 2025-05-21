terraform {
  required_providers {
    fortiappseccloud = {
      source  = "fortinet/fortiappseccloud"
      version = "1.0.0"
    }
  }
}

provider "fortiappseccloud" {
  hostname  = "api.appsec.fortinet.com"
  api_token = "token"
}

resource "fortiappseccloud_waf_app" "app_example" {
  app_name    = "from_terraform"
  domain_name = "www.example.com"
  app_service = {
    http  = 80
    https = 443
  }
  origin_server_ip      = "1.1.1.1"
  origin_server_service = "HTTPS"
  cdn                   = false
  continent_cdn         = false
}
