# @summary 
#
# @example
#   include mysql::config
class mysql::config {
  file { "${mysql::config_path}":
    ensure => $mysql::config_ensure,
    source => "puppet:///modules/mysql/${osfamily}.cnf",
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
  }
}
