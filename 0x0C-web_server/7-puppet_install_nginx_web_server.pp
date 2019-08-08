# installs and configures nginx
package { 'nginx':
  ensure => installed,
}

file_line { 'Insert the redirection line in the config file':
  ensure   => 'present',
  path     => '/etc/nginx/sites-available/default',
  after    => 'server_name _;',
  line     => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=wpV-gGA4PSk permanent;',
}

file { '/var/www/html/index.html':
  content => 'Holberton School',
}

service { 'restart nginx':
  ensure  => stopped,
  require => Package['nginx'],
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
