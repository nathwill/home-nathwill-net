name 'db'

default_attributes(
  'postgresql' => {
    'config' => {
      'listen_addresses' => '*',
      'wal_level' => 'hot_standby',
      'synchronous_commit' => 'on',
      'archive_mode' => 'off',
      'max_wal_senders' => 5,
      'wal_keep_segments' => 32,
      'hot_standby' => 'on',
      'restart_after_crash' => 'off',
      'replication_timeout' => 5000, #msecs
      'wal_receiver_status_interval' => 2, #secs
      'max_standby_streaming_delay' => -1,
      'hot_standby_feedback' => 'on',
    },
    'pg_hba' => [
      {type: 'host', db: 'all', user: 'all', addr: '0.0.0.0/0', method: 'password'},
    ],
    'version' => '9.2',
    'dir' => '/srv/data/pgsql/9.2/data',
    'enable_pgdg_yum' => true,
    'password' => { 'postgres' => 'changeme' },
    'config_pgtune' => {
      'max_connections' => '500',
    },
  },
)

override_attributes(
  'postgresql' => {
    'client' => { 'packages' => %w{postgresql92} },
    'server' => { 'packages' => %w{postgresql92-server postgresql92-devel postgresql92-contrib},
                  'service_name' => 'postgresql-9.2' },
  },
)
run_list %w{
  recipe[postgresql::server]
  recipe[postgresql::config_initdb]
}
