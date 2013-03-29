name "database"
description "the database server"

run_list [
  "recipe[mysql::server]","recipe[mysql::client]"
]
