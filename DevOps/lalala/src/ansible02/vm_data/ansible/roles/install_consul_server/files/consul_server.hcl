bind_addr = "{{ GetInterfaceIP \"enp0s8\" }}"
server = true
bootstrap = true
ui = true
data_dir = "/home/vagrant/consul_data"
client_addr = "0.0.0.0"
enable_syslog = true
