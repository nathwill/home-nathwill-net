name 'fileshare'

default_attributes(
  :samba => {
    :workgroup => "WORKGROUP",
    :hosts_allow => "10.0.1.0/24",
    :server_string => "Home File Server",
  }
)

run_list %w{
  recipe[samba::server]
}
