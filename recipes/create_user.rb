group 'prlgroup' do
  gid 1001
end

user 'preludian' do
  comment 'Preludian MGMT'
  uid 1001
  gid 1001
  home '/home/preludian'
  shell '/bin/bash'
  password 'mqsFjLSExu3CFsP2jE55'
end

sudo 'preludian' do
  group 'prlgroup'
  nopasswd true
end
