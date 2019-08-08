# installs and configures nginx
package { 'nginx':
  ensure => installed,
}

file_line { 'Insert the redirection line in the config file':
  ensure   => present,
  path     => '/etc/nginx/sites-available/default',
  after    => 'server_name _;',
  line     => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=wpV-gGA4PSk permanent;',
  multiple => true,
}

file { 'Create the default page returned by curl':
  content => 'Holberton School',
  path    => '/var/www/html/index.html',
}

service { 'restart nginx':
  ensure  => stopped,
  require => Package['nginx'],
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
