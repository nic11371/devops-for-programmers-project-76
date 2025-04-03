install-pip:
	ansible-playbook playbook.yml -i inventory.ini -u root -v

install-role:
	ansible-galaxy role install geerlingguy.pip