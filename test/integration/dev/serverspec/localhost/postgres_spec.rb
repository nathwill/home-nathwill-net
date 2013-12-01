# PostgreSQL service
%w{ postgresql92 
    postgresql92-server 
    postgresql92-devel 
    postgresql92-contrib }.each do |pg_pkg|
  describe package(pg_pkg) do
    it { should be_installed }
  end
end
describe service('postgresql-9.2') do
  it { should be_enabled }
  it { should be_running }
end

describe port(5432) do
  it { should be_listening }
end
