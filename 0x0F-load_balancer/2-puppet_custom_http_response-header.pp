# puppet manifest creating a custom HTTP header response
package { 'nginx':
  ensure => installed,
}

file_line { 'a':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

file_line { 'b':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'add_header X-Served-By $hostname;'
}

file { '/var/www/html/index.html':
  content => 'Holberton School',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
