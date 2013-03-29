name "torrent"
description "the torrent server"

run_list [
  "recipe[transmission]"
]
