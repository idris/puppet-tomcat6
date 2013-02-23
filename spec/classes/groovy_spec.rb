require 'spec_helper'

describe 'tomcat6' do
  let(:boxen_home) { '/opt/boxen' }
  let(:config_dir) { "#{boxen_home}/config/git" }
  let(:repo_dir)   { "#{boxen_home}/repo" }
  let(:env_dir)    { "#{boxen_home}/env.d" }
  let(:facts) do
    {
      :boxen_home    => boxen_home,
      :boxen_repodir => repo_dir,
      :boxen_envdir  => env_dir
    }
  end

  it { should contain_package('tomcat6').with_ensure('latest') }

end
