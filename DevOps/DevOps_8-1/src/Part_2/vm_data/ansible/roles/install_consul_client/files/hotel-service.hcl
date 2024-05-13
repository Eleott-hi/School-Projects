server = false
advertise_addr = "{{ GetInterfaceIP \"enp0s8\" }}"
data_dir = "/home/vagrant/consul_data"
retry_join = ["10.100.199.201"]
ports = {
    grpc = 8502
}

service {
  name = "hotel-service"
  port = 8082
  tags = ["api"]
  connect = {
    sidecar_service = {
      proxy = {
        upstreams = [
          {
            destination_name = "postgres-service"
            local_bind_address = "127.0.0.1"
            local_bind_port = 5432
          }
        ]
      }
    }
  }
}
