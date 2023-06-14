
.PHONY: box
box:
	ansible-playbook -i hosts box.yaml

.PHONY: fractal
fractal:
	ansible-playbook -i hosts fractal.yaml
