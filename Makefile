ping:
	ansible selectel -i inventory.ini -m file -a "path=/tmp/hello_world state=touch"

git-install:
	ansible-playbook playbook.yaml -i first.ini

git-uninstall:
	ansible-playbook playbook2.yaml -i first.ini

update-cache:
	ansible-playbook playbook3.yaml -i first.ini -t cache

create-user:
	ansible-playbook playbook3.yaml -i first.ini -t newuser

install-role:
	ansible-galaxy install -r requirements.yml