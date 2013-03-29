name "git"
description "the git server"

run_list [
  "recipe[git::server]"
]
