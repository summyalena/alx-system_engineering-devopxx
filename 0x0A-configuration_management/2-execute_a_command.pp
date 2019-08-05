# kills a process
exec { 'killmenow':
  command  => '/usr/bin/pkill killemenow',
  creates  => '/home/vagrant/holberton-system_engineering-devops/0x0A-configuration_management/killmenow',
  cwd      => '/home/vagrant/holberton-system_engineering-devops/0x0A-configuration_management/',
  provider => 'shell',
  returns  => [0, 1],
}
