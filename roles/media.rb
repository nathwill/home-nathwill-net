name 'media'

run_list %w{
  role[base]
  role[log-client]
  role[print]
  recipe[home-nathwill-net::media]
}
