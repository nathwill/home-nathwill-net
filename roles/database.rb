name "database"
description "the database server"

default_attributes(
  :mysql => {
    :server_root_password => "iloverandompasswordsbutthiswilldo",
    :server_repl_password => "iloverandompasswordsbutthiswilldo",
    :server_debian_password => "iloverandompasswordsbutthiswilldo"
  }
)

run_list [
  "recipe[mysql::server]","recipe[mysql::client]"
]
