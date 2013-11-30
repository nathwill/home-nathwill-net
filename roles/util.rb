name 'util'

run_list %w{
  role[log-host]
  recipe[home-nathwill-net::util]
}
