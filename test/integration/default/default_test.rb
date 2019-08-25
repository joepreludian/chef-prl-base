# # encoding: utf-8

# Inspec test for recipe prl_base::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


# This is an example test, replace with your own test.
describe user('preludian') do
  it { should exist }
end

describe group('preludian') do
  it { should exist }
end

describe group('docker') do 
  it { should exist }
end

describe command('sudo su preludian -c "docker ps"') do
  its('exit_status') { should eq 0 }
end

# This is an example test, replace it with your own test.
describe port(22) do
  it { should be_listening }
end

describe command('sudo su preludian -c "sudo whoami"') do
  its(:stdout) { should match(/root/) }
end

describe file('/home/preludian') do
  it { should exist }
  its('owner') { should eq 'preludian' }
  its('group') { should eq 'preludian' }
end

describe file('/home/preludian/.ssh/authorized_keys') do
  it { should exist }
  its('owner') { should eq 'preludian' }
  its('group') { should eq 'preludian' }
  its('mode') { should cmp '0600' }
  its(:content) { should match(/ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEqs1V0ug1wAUkTj5CpjKusXfbsdVh3OJWnYEZ/) }
end

describe file('/etc/ssh/sshd_config') do
  its(:content) { should match(/PasswordAuthentication no/) }
  its(:content) { should match(/PermitRootLogin no/) }
	its(:content) { should match(/AllowTcpForwarding yes/) }
end

describe command('/usr/local/bin/docker-compose version') do
  its('exit_status') { should eq 0 }
  its(:stdout) { should match(/1\.24\.1/) }
end
