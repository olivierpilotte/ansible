
.PHONY: copy-bash
copy-bash:
	cp ~/.bashrc roles/ps1/files/bashrc
	cp ~/.bash_aliases roles/ps1/files/bash_aliases
	cp ~/.bash_functions roles/ps1/files/bash_functions
	cp ~/.bash_ps1 roles/ps1/files/bash_ps1
	cp ~/.bash_motd roles/ps1/files/bash_motd
	cp ~/.git-prompt.sh roles/ps1/files/git-prompt.sh

.PHONY: box
box: copy-bash
	ansible-playbook -i hosts box.yaml

.PHONY: fractal
fractal: copy-bash
	ansible-playbook -i hosts fractal.yaml
