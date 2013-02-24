# Public: Installs & configures tomcat6
#
# Examples
#
#   include tomcat6
class tomcat6 {
  require homebrew

  homebrew::formula { 'tomcat6':
    before => Package['boxen/brews/tomcat6']
  }

  package { 'boxen/brews/tomcat6':
    ensure => '6.0.36-boxen1'
  }
}
