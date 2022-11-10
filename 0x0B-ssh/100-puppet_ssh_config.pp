# create file /ssh_config:
$pth = '/etc/ssh/ssh_config'

file_line { 'authentication password no' :
  ensure => present,
  path   => $pth,
  line   => '    PasswordAuthentication no'
}

file_line { 'use private key school' :
  ensure => present,
  path   => $pth,
  line   => '    IdentityFile ~/.ssh/school'
}
