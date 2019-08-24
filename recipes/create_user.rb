group 'preludian' do
  gid 1001
end

user 'preludian' do
  comment 'Preludian MGMT'
  uid 1001
  gid 1001
  home '/home/preludian'
  shell '/bin/bash'
  manage_home true
  password '$1$qi.el5qF$80U.06MhQDyh9fD9pq71D/'
  action :create
end

directory '/home/preludian/.ssh' do
  user 'preludian'
  group 'preludian'
  recursive true
  action :create
end

file '/home/preludian/.ssh/authorized_keys' do
  user 'preludian'
  group 'preludian'
  content node['prl_base']['authorized_keys'].join('\n')
  mode '0600'
end

sudo 'preludian' do
  group 'preludian'
  nopasswd true
end
