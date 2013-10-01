name 'monitor-client'

run_list %w{
  recipe[munin::client]
}
