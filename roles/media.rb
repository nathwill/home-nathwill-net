name 'media'

run_list %w{
  role[log-client]
  role[print]
  recipe[home-nathwill-net::media]
}
