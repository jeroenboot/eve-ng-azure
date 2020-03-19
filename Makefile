TERRAFORM_CMD ?= terraform
ANSIBLE_CMD ?= ansible-playbook
ANSIBLE_USER ?= eve
SSH_KEY ?= $(HOME)/.ssh/mbp2019
VM_SIZE ?= Standard_D2s_v3
IMAGES_PATH ?= images/
ANSIBLE_PYTHON_INTERPRETER ?= /usr/bin/python3
INVENTORY ?= inventory
PLAYBOOK ?= playbook.yml


init:
	@cd terraform; $(TERRAFORM_CMD) init -var-file=secrets.tfvars
plan: init
	@cd terraform; $(TERRAFORM_CMD) plan -var-file=secrets.tfvars
apply: init
	@cd terraform; $(TERRAFORM_CMD) apply -var-file=secrets.tfvars -auto-approve; $(TERRAFORM_CMD) output fqdn > ../inventory
destroy: init
	@cd terraform; $(TERRAFORM_CMD) destroy -var-file=secrets.tfvars
ansible: apply$()
	@ANSIBLE_HOST_KEY_CHECKING=False $(ANSIBLE_CMD) -u $(ANSIBLE_USER) --private-key $(SSH_KEY) -i $(INVENTORY) -e 'images_path=$(IMAGES_PATH)' -e 'ansible_python_interpreter=$(ANSIBLE_PYTHON_INTERPRETER)' $(PLAYBOOK)
images: ansible
deploy: ansible
resize:
	@if grep -q vm_size terraform/secrets.tfvars; then \
	  cat terraform/secrets.tfvars | sed -e 's,vm_size = .*,vm_size = "$(VM_SIZE)",' > secrets.tfvars && mv -f secrets.tfvars terraform/secrets.tfvars; \
	else \
	  echo '\nvm_size = "$(VM_SIZE)"' >> terraform/secrets.tfvars; \
	fi
	@$(MAKE) -s deploy