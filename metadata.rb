name "campfire"
maintainer "Cameron Johnston"
maintainer_email "cameron@rootdown.net"
description "LWRP for sending messages to Campfire rooms"
version "0.1.0"
license "Apache 2.0"

recipe "campfire::default", "Default cookbook recipe for setting up Campfire for chef"

attribute "campfire/api_token",
  :display_name => "Campfire API Token",
  :description => "API token of Campfire account to use.",
  :required => "required",
  :recipes => ["campfire::default"]

attribute "campfire/subdomain",
  :display_name => "Campfire account (subdomain)",
  :description => "Campfire subdomain to publish messages to.",
  :required => "optional",
  :default => "abine",
  :recipes => ["campfire::default"]
