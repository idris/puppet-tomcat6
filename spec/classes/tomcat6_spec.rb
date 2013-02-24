require 'spec_helper'

describe 'tomcat6' do
  let(:boxen_home) { '/opt/boxen' }
  let(:config_dir) { "#{boxen_home}/config/tomcat6" }
  let(:repo_dir)   { "#{boxen_home}/repo" }
  let(:env_dir)    { "#{boxen_home}/env.d" }
  let(:facts) do
    {
      :boxen_home    => boxen_home,
      :boxen_repodir => repo_dir,
      :boxen_envdir  => env_dir
    }
  end

  it {
    should include_class('homebrew')
    should contain_package('boxen/brews/tomcat6').with_ensure('6.0.36-boxen1')
  }

end
