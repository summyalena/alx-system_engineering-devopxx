# installs and configures nginx
package { 'Install nginx':
  ensure => installed,
  name   => 'nginx',
}

file { 'Create the default page returned by curl':
  content => 'Holberton School',
  path    => '/var/www/html/index.html',
}

file_line { 'Insert the redirection line in the config file':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=wpV-gGA4PSk permanent;',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
