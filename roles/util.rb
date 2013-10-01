name 'util'

run_list %w{
  role[base]
  role[log-host]
  role[monitor-host]
  role[dns-host]
}
