name 'dev'

run_list %w{
  role[base]
  role[monitor-client]
  role[log-client]
  role[dns-client]
  role[git]
  role[db]
  role[web]
}
