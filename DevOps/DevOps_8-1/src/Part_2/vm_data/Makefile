ANSIBLE_DIR := ~/vm_data/ansible
INVENTORY := $(ANSIBLE_DIR)/inventory.yaml
PLAYBOOK := $(ANSIBLE_DIR)/playbook.yaml

all: playbook

init:
	ssh-keygen

verify_inv:
	cd $(ANSIBLE_DIR); ansible-inventory -i $(INVENTORY) --list

ping:
	cd $(ANSIBLE_DIR); ansible myhosts -m ping -i $(INVENTORY)

playbook:
	cd $(ANSIBLE_DIR); ansible-playbook -i $(INVENTORY) $(PLAYBOOK)
