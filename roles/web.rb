name "web"
description "the web server"

run_list [
  "recipe[nginx]",
]
