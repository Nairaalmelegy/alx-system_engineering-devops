# Create a manifest that fixes file name typo
exec { 'fix_apache_config':
  command     => '/bin/sed -i "s/DirectoryIndex.*/DirectoryIndex index.php index.html/g" /etc/apache2/mods-available/dir.conf && /bin/ln -sf /etc/apache2/mods-available/dir.conf /etc/apache2/mods-enabled/dir.conf',
  path        => '/bin',
  refreshonly => true,
}

service { 'httpd':
  ensure  => running,
  enable  => true,
  require => Exec['fix_apache_config'],
}
