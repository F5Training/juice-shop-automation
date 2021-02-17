hosts:
	awk -f files/hosts.awk files/list.txt > ./hosts

.PHONY: clean
.PHONY: juice
.PHONY: unjiuce

juice:
	unbuffer ansible-playbook install-juice-shop.yaml | less -R

unjuice:
	unbuffer ansible-playbook remove-juice-shop.yaml | less -R

clean:
	rm ./hosts
