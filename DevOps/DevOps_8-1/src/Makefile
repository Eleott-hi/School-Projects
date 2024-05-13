all: vagrant_down vagrant_up

docker_compose_up:
	docker compose up

vagrant_up:
	vagrant up --provision-with=shell

vagrant_down:
	vagrant halt
	vagrant destroy -f

reload:
	vagrant reload

.PHONY: connect
connect:
ifndef vm
	$(error vm is not set. Usage: make connect vm=1)
endif
	vagrant ssh $(vm)

.PHONY: config
config:
ifndef vm
	vagrant ssh-config
else
	vagrant ssh-config $(vm)
endif

ansible01: vagrant_down vagrant_up 
	vagrant ssh manager -c "ln -s /vagrant/ansible01/ansible ./; ln -s /vagrant/ansible01/Makefile ./;"

