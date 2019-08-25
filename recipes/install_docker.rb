group 'docker' do
  action :create
end

docker_service 'default' do
  action [:create, :start]
end

execute 'install_docker_compose' do
  command 'curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose && /usr/local/bin/docker-compose version'
  live_stream true
  not_if { ::File.exist?('/usr/local/bin/docker-compose') }
end

execute 'docker_post_actions' do
  command 'usermod -aG docker preludian'
end
