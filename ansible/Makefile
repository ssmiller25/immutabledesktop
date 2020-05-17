.PHONY: rory-mac
rory-mac:
	ansible-playbook playbook-rory-mac.yml -K

.PHONY: check-rory-mac
check-rory-mac:
	ansible-playbook playbook-rory-mac.yml --check -K

.PHONY: daily
daily:
	ansible-playbook playbook-dailysync.yml

.PHONY: check-daily
	ansible-playbook playbook-dailysync.yml --check