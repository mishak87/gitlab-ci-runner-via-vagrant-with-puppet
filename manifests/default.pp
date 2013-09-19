# # Set default path for Exec calls
# Exec {
#     path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ]
# }

exec { 'apt-get update':
  command => '/usr/bin/apt-get update'
}

class { 'gitlab_ci_runner':
  gitlab_ci => 'http://gitlab-ci.mishak.net/',
  gitlab => 'gitlab.mishak.net',
  token => '0d89a08eccbd8d1eac91'
}

php::ini { '/etc/php.ini':
  display_errors => 'On',
  memory_limit   => '256M',
  allow_url_fopen => 'On',
  phar_readonly => 'On',
}

include php::cli

php::module {
	[ 'curl', 'dev', 'gd', 'gmp', 'intl', 'mcrypt', 'mysql', 'odbc', 'pgsql', 'ps', 'sybase', 'xcache', 'xsl' ]:
	require => Exec['apt-get update'],
}

include composer
