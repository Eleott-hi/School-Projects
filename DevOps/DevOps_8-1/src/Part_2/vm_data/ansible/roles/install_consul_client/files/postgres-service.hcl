server = false
advertise_addr = "{{ GetInterfaceIP \"enp0s8\" }}"
data_dir = "/home/vagrant/consul_data"
retry_join = ["10.100.199.201"]
ports = {
    grpc = 8502
}


service {
  name = "postgres-service"
  port = 5432
  tags = ["database"]
  connect = {
    sidecar_service = {}
  }
  check {
    id = "postgres-service-check"
    name = "Database TCP Check"
    tcp = "localhost:5432"
    interval = "1s"
    timeout = "1s"
  }
}