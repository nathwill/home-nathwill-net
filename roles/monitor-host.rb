name "monitor-host"
description "the monitoring server"

default_attributes(
  :munin => {
    :sysadmin_email => "nath.e.will@gmail.com",
    :server_role => "monitoring",
    :server_auth_method => "openid"
  }
)

run_list %w{
  recipe[munin::server]
}
