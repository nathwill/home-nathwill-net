name 'web'

default_attributes(
  'nginx' => {
    'install_method' => 'package',
    'repo_source' => 'nginx',
    'worker_processes' => 1,
    'default_site_enabled' => false,
  },
)

run_list %w{
  recipe[nginx]
}
