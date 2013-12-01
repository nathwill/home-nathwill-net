require 'spec_helper'

# Git
describe package('git') do
  it { should be_installed }
end
