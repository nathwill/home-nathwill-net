name 'log-client'

default_attributes(
  'rsyslog' => {
    'server_ip' => '10.0.1.203',
  }
)

run_list %w{
  recipe[rsyslog::client]
}
