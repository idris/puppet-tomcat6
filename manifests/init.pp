# Public: Installs & configures tomcat6
#
# Examples
#
#   include tomcat6
class tomcat6 {
  $tomcat6_formula_url = 'https://raw.github.com/Homebrew/homebrew-versions/master/tomcat6.rb'

  package { 'tomcat6.rb':
    ensure => latest,
    alias  => 'tomcat6',
    source => $tomcat6_formula_url
  }
}
