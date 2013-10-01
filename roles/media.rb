name 'media'

run_list %w{
  role[base]
  role[monitor-client]
  role[log-client]
  role[dns-client]
  role[print]
  role[torrent]
  role[fileshare]
}
