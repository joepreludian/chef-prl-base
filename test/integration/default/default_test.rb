# # encoding: utf-8

# Inspec test for recipe prl_base::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


# This is an example test, replace with your own test.
describe user('preludian') do
  it { should exist }
end

# This is an example test, replace it with your own test.
describe port(22) do
  it { should be_listening }
end

describe command('sudo su preludian -c "sudo whoami"') do
  its(:stdout) { should match(/root/) }
end

describe file('/etc/ssh/ca_keys') do
  its(:content) { should match(/ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTpcDKto9bXPVV/) }
end
