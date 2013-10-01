name 'log-client'

run_list %w{
  recipe[rsyslog::client]
}
