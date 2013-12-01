require 'spec_helper'

# Fail2Ban service
describe service('fail2ban') do
  it { should be_enabled }
  it { should be_running }
end
