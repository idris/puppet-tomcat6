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

  $exports = "export BOXEN_CATALINA_HOME=${homebrew::config::installdir}/Cellar/tomcat6/6.0.36-boxen1/libexec\nexport CATALINA_HOME=\$BOXEN_CATALINA_HOME"

  file { "${boxen::config::envdir}/tomcat6.sh":
    content => "$exports",
    require => File[$boxen::config::envdir]
  }
}
