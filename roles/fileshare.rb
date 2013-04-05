name "fileshare"
description "the file server"

default_attributes(
  :samba => {
    :workgroup => "WORKGROUP",
    :hosts_allow => "192.168.1.0/24",
    :server_string => "Home File Server",
  }
)

run_list [
  "recipe[samba::server]"
]
