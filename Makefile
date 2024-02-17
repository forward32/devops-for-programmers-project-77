setup:
	ansible-playbook ansible/playbook.yml --tags "setup" -i ansible/inventory.ini --vault-password-file ansible/vault-password-file

redmine:
	ansible-playbook ansible/playbook.yml --tags "redmine" -i ansible/inventory.ini --vault-password-file ansible/vault-password-file

datadog:
	ansible-playbook ansible/playbook.yml --tags "datadog" -i ansible/inventory.ini --vault-password-file ansible/vault-password-file

secrets:
	ansible-playbook ansible/playbook.yml --tags "terraform" --vault-password-file ansible/vault-password-file

init:
	terraform -chdir=terraform init

apply: secrets
	terraform -chdir=terraform apply

destroy: secrets
	terraform -chdir=terraform destroy
