ping:
		ansible webservers -i inventory.ini -u root -m ping

install_role:
		ansible-galaxy install -r requirements.yml

install_pip:
		ansible-playbook playbook.yml -i inventory.ini -u root -v 

create-vault:
	ansible-vault encrypt group_vars/all/vault.yml 

edit-vault:
	ansible-vault edit group_vars/all/vault.yml

deploy:
		ansible-playbook playbook.yml -i inventory.ini -t deploy --vault-password-file .pass -vv

setup:
	ansible-playbook setup.yml -i inventory.ini --vault-password-file .pass -v

# ansible-playbook -i inventory --ask-vault-pass playbook.yml запуск плейбука если есть vault
# ansible-playbook --vault-password-file /.pass -i inventory  playbook.yml - 
# в этой команде берем пароль из файла
