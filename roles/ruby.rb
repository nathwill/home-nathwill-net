name 'ruby'

default_attributes(
  'rbenv' => {
    'rubies' => %w{2.0.0-p353},
    'default_ruby' => '2.0.0-p353',
    'gems' => {
      '2.0.0-p353' => [
        {'name' => 'bundler'},
      ],
    },
  },
)

run_list %w{
  recipe[ruby_build]
  recipe[rbenv::system]
}
