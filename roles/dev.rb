name 'dev'

run_list %w{
  role[base]
  role[git]
  role[db]
  role[ruby]
  recipe[home-nathwill-net::dev]
}
