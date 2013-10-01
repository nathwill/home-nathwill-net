name 'log-host'

run_list %w{
  recipe[rsyslog::server]
}
