require 'spec_helper'

# SSH service
%w{ openssh-server openssh openssh-clients}.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe file('/etc/ssh/sshd_config') do
  it { should be_file }
end

describe service('sshd') do
  it { should be_enabled }
  it { should be_running }
end

describe port(22) do
  it { should be_listening }
end
