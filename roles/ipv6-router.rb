name "ipv6-router"
description "the ipv6 router"

run_list [
  "recipe[ipv6tunnel]", "recipe[radvd]"
]
