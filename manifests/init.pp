# Public: Installs & configures tomcat6
#
# Examples
#
#   include tomcat6
class tomcat6 {
  require boxen::config

  package { 'tomcat6':
    ensure => latest
  }
}
