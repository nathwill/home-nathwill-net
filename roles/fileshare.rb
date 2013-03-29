name "fileshare"
description "the file server"

run_list [
  "recipe[samba]"
]
