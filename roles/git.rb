name 'git'

default_attributes(
  'git' => {
    'server' => {'base_path' => '/srv/git'}
  }
)

run_list %w{
  recipe[git::server]
}
