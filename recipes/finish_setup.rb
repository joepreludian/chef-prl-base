execute 'packages cleanup' do
  command 'yum clean all --verbose'
  live_stream true
end
