name 'util'

run_list %w{
  role[base]
  role[log-host]
  recipe[home-nathwill-net::util]
}
