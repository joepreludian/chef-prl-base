execute 'update_all_packages' do
  command 'yum update -y'
  live_stream true
end
