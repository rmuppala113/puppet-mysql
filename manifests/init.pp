# @summary
# Manages the basic functions of a MySQL server
class mysql (
  String $install_name,
  String $install_ensure,
  String $config_path,
  String $config_ensure,
  String $service_name,
  String $service_ensure,
  Boolean $service_enable,
  Boolean $service_hasrestart,
) {
  contain mysql::install
  contain mysql::config
  contain mysql::service

  Class['::mysql::install']
  -> Class['::mysql::config']
  ~> Class['::mysql::service']
}
