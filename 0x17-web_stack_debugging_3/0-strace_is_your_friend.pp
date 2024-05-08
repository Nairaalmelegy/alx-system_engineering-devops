# Create a manifest that fixes file name typo
exec { 'fix_apache_config':
  command     => '/bin/sed -i "s/DirectoryIndex.*/DirectoryIndex index.php index.html/g" /etc/apache2/mods-enabled/dir.conf',
  refreshonly => true,
  subscribe   => File['/etc/apache2/mods-enabled/dir.conf'],
}

service { 'apache2':
  ensure => running,
  enable => true,
}
