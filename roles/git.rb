name "git"
description "the git server"

run_list %w{
  recipe[git::server]
}
