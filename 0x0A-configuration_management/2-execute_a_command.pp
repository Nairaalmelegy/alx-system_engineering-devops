exec { 'killmenow':
  command     => '/usr/bin/pkill -f killmenow',
  path        => '/usr/bin',
  onlyif      => '/usr/bin/pgrep -f killmenow',  # Ensure process is running before attempting to kill it
  refreshonly => true,                         # Only run when notified, not on every Puppet run
}

# Notify the exec resource to run immediately
notify { 'Kill process killmenow':
  require => Exec['killmenow'],
}
