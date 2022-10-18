# create file /tmp/school:

file { 'create /tmp/school' :
  ensure  => 'present',
  path    => '/tmp/school',
  mode    => 'u+rwx',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet'
}
