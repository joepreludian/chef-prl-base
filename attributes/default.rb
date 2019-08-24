default['prl_base']['authorized_keys'] = [
  'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEqs1V0ug1wAUkTj5CpjKusXfbsdVh3OJWnYEZc+YxUsGENEQU4btfbXCPC+De56uQ2zO/CwHh1HWfCEsbTkzxE9xc+vK5TMP6znu+PXrs9b3JtFT1NuMPTGRTtugTTD3bfArauaatGahMSd0jejp2rKe5OZ51Ub3RXpGcGN3jqt0ka6WTeN+ojVybVcxOQCQyPbLExwst/E2bhT7YhQfQMi3/2K8IBZXdjUZHlvNiHRnoFr5sbCLiCsWpti6whY9xOPIGijR+7urd8N/p9XnId4hMc3ZznsXSOg/YWDS/m/slbyiwAVH086tH3krer02N4UwdKUsDPdG9taPIPeir joey@JoeyMacbook.local'
]

default['openssh']['server']['password_authentication'] = 'no'
default['openssh']['server']['port'] = '40022'
default['openssh']['server']['allow_tcp_forwarding'] = 'yes'
default['openssh']['server']['permit_root_login'] = 'no'
