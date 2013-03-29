name "monitoring"
description "the monitoring server"

run_list [
  "recipe[munin::server]"
]
