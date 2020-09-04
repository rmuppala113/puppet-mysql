# @summary
#
# @example
#   include mysql::install
class mysql::install {
  package { "${mysql::install_name}":
    ensure => $mysql::install_ensure,
  }
}
